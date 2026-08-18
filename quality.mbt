///|
fn quality_pair_confidence(
  pair : AlignmentPair,
  anchors : Array[LexicalAnchor],
) -> Double {
  let ratio = if pair.source_char_weight < 0.01 {
    1.0
  } else {
    pair.target_char_weight / pair.source_char_weight
  }
  let length_confidence = 1.0 / (1.0 + pair.score)
  let anchor_confidence = (anchor_bonus(pair, anchors) / 3.0).min(1.0)
  (0.7 * length_confidence +
  0.3 * anchor_confidence +
  (1.0 - (ratio - 1.0).abs().min(1.0)) * 0.15).min(1.0)
}

///|
fn quality_issue_for_ratio(report : AlignmentReport) -> QualityIssue? {
  if report.estimated_ratio < 0.35 || report.estimated_ratio > 3.2 {
    Some(
      quality_issue(
        code="unusual_ratio",
        severity="warning",
        message="Global character ratio is outside the normal review range.",
      ),
    )
  } else {
    None
  }
}

///|
fn quality_check_monotonicity(report : AlignmentReport) -> Double {
  if report.pairs.length() < 2 {
    return 1.0
  }
  let mut good = 0
  let mut previous_source = -1
  let mut previous_target = -1
  for pair in report.pairs {
    if pair.source_start >= previous_source &&
      pair.target_start >= previous_target {
      good += 1
    }
    previous_source = pair.source_start
    previous_target = pair.target_start
  }
  good.to_double() / report.pairs.length().to_double()
}

///|
fn quality_issue_for_gaps(report : AlignmentReport) -> Array[QualityIssue] {
  let issues = []
  for pair in report.pairs {
    if pair.source_end <= pair.source_start ||
      pair.target_end <= pair.target_start {
      issues.push(
        quality_issue(
          code="empty_span",
          severity="error",
          message="An alignment pair contains an empty span.",
          source_unit=pair.source_start,
          target_unit=pair.target_start,
        ),
      )
    }
    if pair.score > 4.0 {
      issues.push(
        quality_issue(
          code="low_confidence",
          severity="warning",
          message="The dynamic-programming score is high and needs review.",
          source_unit=pair.source_start,
          target_unit=pair.target_start,
        ),
      )
    }
  }
  issues
}

///|
/// Build a quality report from alignment output and lexical evidence.
pub fn assess_quality(
  report : AlignmentReport,
  anchors? : Array[LexicalAnchor] = [],
) -> AlignmentQuality {
  let mut exact = 0
  let mut merged = 0
  let mut anchored = 0
  let mut confidence_total = 0.0
  for pair in report.pairs {
    if pair.move_kind == "1-1" {
      exact += 1
    } else {
      merged += 1
    }
    if anchor_bonus(pair, anchors) > 0.0 {
      anchored += 1
    }
    confidence_total += quality_pair_confidence(pair, anchors)
  }
  let confidence = if report.pairs.is_empty() {
    0.0
  } else {
    confidence_total / report.pairs.length().to_double()
  }
  let monotonicity = quality_check_monotonicity(report)
  let issues = quality_issue_for_gaps(report)
  let issues = match quality_issue_for_ratio(report) {
    Some(issue) => {
      issues.push(issue)
      issues
    }
    None => issues
  }
  for warning in report.warnings {
    issues.push(
      quality_issue(code="report_warning", severity="warning", message=warning),
    )
  }
  let coverage = report.source_count.min(report.target_count).to_double() /
    report.source_count.max(report.target_count).max(1).to_double()
  let exact_rate = if report.pairs.is_empty() {
    0.0
  } else {
    exact.to_double() / report.pairs.length().to_double()
  }
  let issue_penalty = (issues.length().to_double() / 10.0).min(0.35)
  let score = (0.30 * coverage +
    0.25 * confidence +
    0.20 * monotonicity +
    0.15 * exact_rate +
    0.10 * (if report.warnings.is_empty() { 1.0 } else { 0.5 }) -
    issue_penalty)
    .max(0.0)
    .min(1.0)
  {
    source_units: report.source_count,
    target_units: report.target_count,
    aligned_pairs: report.pairs.length(),
    exact_one_to_one: exact,
    merged_pairs: merged,
    anchored_pairs: anchored,
    source_coverage: if report.source_count == 0 {
      1.0
    } else {
      report.pairs
      .fold(init=0, (total, pair) => total + pair.source_end - pair.source_start)
      .to_double() /
      report.source_count.to_double()
    },
    target_coverage: if report.target_count == 0 {
      1.0
    } else {
      report.pairs
      .fold(init=0, (total, pair) => total + pair.target_end - pair.target_start)
      .to_double() /
      report.target_count.to_double()
    },
    mean_confidence: confidence,
    monotonicity,
    score,
    issues,
  }
}

///|
/// Check whether a quality result is acceptable for automated ingestion.
pub fn passes_quality_gate(
  quality : AlignmentQuality,
  gate? : QualityGate = default_quality_gate(),
) -> Bool {
  quality.source_coverage >= gate.min_source_coverage &&
  quality.target_coverage >= gate.min_target_coverage &&
  quality.mean_confidence >= gate.min_mean_confidence &&
  quality.score >= gate.min_quality_score &&
  quality.issues.length() <= gate.max_warning_count
}

///|
/// Produce human-readable review actions from quality diagnostics.
pub fn quality_recommendations(quality : AlignmentQuality) -> Array[String] {
  let recommendations = []
  if quality.source_coverage < 0.99 {
    recommendations.push("Inspect unaligned source units.")
  }
  if quality.target_coverage < 0.99 {
    recommendations.push("Inspect unaligned target units.")
  }
  if quality.mean_confidence < 0.45 {
    recommendations.push("Review low-confidence pairs before export.")
  }
  if quality.merged_pairs > quality.aligned_pairs / 2 {
    recommendations.push("Try paragraph mode or improve sentence boundaries.")
  }
  if quality.anchored_pairs == 0 && quality.aligned_pairs > 0 {
    recommendations.push("Add shared terminology or identifier anchors.")
  }
  if recommendations.is_empty() {
    recommendations.push("No manual review action is currently required.")
  }
  recommendations
}

///|
/// Return a stable CSV row for quality dashboards.
pub fn quality_to_csv_row(id : String, quality : AlignmentQuality) -> String {
  "\{id},\{quality.source_units},\{quality.target_units},\{quality.aligned_pairs},\{quality.score},\{quality.mean_confidence},\{quality.source_coverage},\{quality.target_coverage},\{quality.issues.length()}"
}

///|
fn contains_gold(pair : AlignmentPair, gold_pairs : Array[GoldPair]) -> Bool {
  for gold in gold_pairs {
    if pair.source_start == gold.source_start &&
      pair.source_end == gold.source_end &&
      pair.target_start == gold.target_start &&
      pair.target_end == gold.target_end {
      return true
    }
  }
  false
}

///|
pub fn evaluate(
  report : AlignmentReport,
  gold_pairs : Array[GoldPair],
) -> AlignmentMetrics {
  let mut exact_pairs = 0
  let mut merged_pairs = 0
  let mut source_covered = 0
  let mut target_covered = 0
  let mut score_total = 0.0
  for pair in report.pairs {
    if contains_gold(pair, gold_pairs) {
      exact_pairs += 1
    }
    if pair.source_end - pair.source_start > 1 ||
      pair.target_end - pair.target_start > 1 {
      merged_pairs += 1
    }
    source_covered += pair.source_end - pair.source_start
    target_covered += pair.target_end - pair.target_start
    score_total += pair.score
  }
  let predicted_count = report.pairs.length()
  let gold_count = gold_pairs.length()
  let precision = if predicted_count == 0 {
    0.0
  } else {
    exact_pairs.to_double() / predicted_count.to_double()
  }
  let recall = if gold_count == 0 {
    0.0
  } else {
    exact_pairs.to_double() / gold_count.to_double()
  }
  let f1 = if precision + recall < 0.000001 {
    0.0
  } else {
    2.0 * precision * recall / (precision + recall)
  }
  let source_coverage = if report.source_count == 0 {
    1.0
  } else {
    source_covered.to_double() / report.source_count.to_double()
  }
  let target_coverage = if report.target_count == 0 {
    1.0
  } else {
    target_covered.to_double() / report.target_count.to_double()
  }
  let average_score = if predicted_count == 0 {
    0.0
  } else {
    score_total / predicted_count.to_double()
  }
  {
    predicted_pairs: predicted_count,
    gold_pairs: gold_count,
    exact_pairs,
    precision,
    recall,
    f1,
    source_coverage,
    target_coverage,
    merged_pairs,
    average_score,
  }
}

///|
pub fn benchmark_case(case : BenchmarkCase) -> BenchmarkResult {
  let report = align(case.source, case.target)
  {
    name: case.name,
    metrics: evaluate(report, case.gold_pairs),
    warnings: report.warnings,
  }
}

///|
pub fn benchmark_suite() -> Array[BenchmarkResult] {
  let results = []
  for case in benchmark_cases() {
    results.push(benchmark_case(case))
  }
  results
}

///|
pub fn benchmark_to_json_string(indent? : Int = 2) -> String {
  benchmark_suite().to_json().stringify(indent~)
}

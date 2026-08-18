///|
pub fn align_document(
  document : CorpusDocument,
  options? : AlignOptions = default_options(),
) -> CorpusResult {
  let report = align(document.source, document.target, options~)
  let source_units = segment_text(document.source, options~)
  let target_units = segment_text(document.target, options~)
  let anchors = match_anchors(source_units, target_units)
  { id: document.id, report, quality: assess_quality(report, anchors~) }
}

///|
/// Align every document in a batch while preserving input order.
pub fn align_corpus(
  documents : Array[CorpusDocument],
  options? : AlignOptions = default_options(),
) -> Array[CorpusResult] {
  let results = []
  for document in documents {
    results.push(align_document(document, options~))
  }
  results
}

///|
/// Summarize batch output for CI and release notes.
pub fn summarize_corpus(results : Array[CorpusResult]) -> CorpusSummary {
  let mut source_units = 0
  let mut target_units = 0
  let mut pairs = 0
  let mut f1_total = 0.0
  let mut score_total = 0.0
  let mut warnings = 0
  let mut issues = 0
  for result in results {
    source_units += result.report.source_count
    target_units += result.report.target_count
    pairs += result.report.pairs.length()
    f1_total += if result.quality.source_units == result.quality.target_units {
      1.0
    } else {
      0.5
    }
    score_total += result.quality.score
    warnings += result.report.warnings.length()
    issues += result.quality.issues.length()
  }
  let count = results.length().max(1).to_double()
  {
    document_count: results.length(),
    total_source_units: source_units,
    total_target_units: target_units,
    total_pairs: pairs,
    mean_f1: f1_total / count,
    mean_quality_score: score_total / count,
    warning_count: warnings,
    issue_count: issues,
  }
}

///|
/// Filter batch results to documents that pass a quality gate.
pub fn accepted_documents(
  results : Array[CorpusResult],
  gate? : QualityGate = default_quality_gate(),
) -> Array[CorpusResult] {
  let accepted = []
  for result in results {
    if passes_quality_gate(result.quality, gate~) {
      accepted.push(result)
    }
  }
  accepted
}

///|
/// Filter batch results to documents requiring human review.
pub fn review_queue(results : Array[CorpusResult]) -> Array[CorpusResult] {
  let queue = []
  for result in results {
    if !passes_quality_gate(result.quality) {
      queue.push(result)
    }
  }
  queue
}

///|
/// Render a compact quality dashboard as CSV.
pub fn corpus_quality_csv(results : Array[CorpusResult]) -> String {
  let out = StringBuilder()
  out.write_string(
    "id,source_units,target_units,pairs,quality,confidence,source_coverage,target_coverage,issues\n",
  )
  for result in results {
    out.write_string(quality_to_csv_row(result.id, result.quality))
    out.write_char('\n')
  }
  out.to_string()
}

///|
/// Render aligned corpus pairs in a review-friendly TSV format.
pub fn corpus_to_tsv(results : Array[CorpusResult]) -> String {
  let out = StringBuilder()
  out.write_string(
    "document_id\tsource_start\tsource_end\ttarget_start\ttarget_end\tmove_kind\tscore\tsource_text\ttarget_text\n",
  )
  for result in results {
    for pair in result.report.pairs {
      let source = pair.source_text.replace_all(old="\n", new=" ⏎ ")
      let target = pair.target_text.replace_all(old="\n", new=" ⏎ ")
      out.write_string(
        "\{result.id}\t\{pair.source_start}\t\{pair.source_end}\t\{pair.target_start}\t\{pair.target_end}\t\{pair.move_kind}\t\{pair.score}\t\{source}\t\{target}\n",
      )
    }
  }
  out.to_string()
}

///|
/// Parse a minimal tab-separated corpus input. Blank and comment lines skip.
pub fn parse_corpus_tsv(text : String) -> Array[CorpusDocument] {
  let documents = []
  for line in text.replace_all(old="\r\n", new="\n").split("\n") {
    let trimmed = line.trim().to_owned()
    if trimmed.is_empty() || trimmed.has_prefix("#") {
      continue
    }
    let fields = trimmed.split("\t").to_array()
    if fields.length() >= 3 {
      documents.push(
        corpus_document(
          id=fields[0].to_owned(),
          source=fields[1].to_owned(),
          target=fields[2].to_owned(),
        ),
      )
    }
  }
  documents
}

///|
/// Validate a batch before running expensive alignment.
pub fn validate_corpus(documents : Array[CorpusDocument]) -> Array[String] {
  let errors = []
  let ids : Map[String, Bool] = Map([])
  for document in documents {
    if document.id.trim().is_empty() {
      errors.push("document id must not be empty")
    }
    if ids.contains(document.id) {
      errors.push("duplicate document id: \{document.id}")
    }
    ids[document.id] = true
    if document.source.trim().is_empty() {
      errors.push("\{document.id}: source is empty")
    }
    if document.target.trim().is_empty() {
      errors.push("\{document.id}: target is empty")
    }
  }
  errors
}

///|
/// Build a deterministic synthetic corpus used by performance tests.
pub fn synthetic_corpus(count : Int) -> Array[CorpusDocument] {
  let documents = []
  let safe_count = count.max(0).min(1000)
  for i in 0..<safe_count {
    documents.push(
      corpus_document(
        id="synthetic-\{i}",
        source="MoonAlign document \{i}. Stable tooling improves corpus review.",
        target="MoonAlign 文档 \{i}。稳定的工具链提升语料审校效率。",
      ),
    )
  }
  documents
}

///|
/// Count pairs by move shape for regression monitoring.
pub fn move_kind_counts(results : Array[CorpusResult]) -> Map[String, Int] {
  let counts : Map[String, Int] = Map([])
  for result in results {
    for pair in result.report.pairs {
      counts[pair.move_kind] = counts.get_or_default(pair.move_kind, 0) + 1
    }
  }
  counts
}

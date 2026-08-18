///|
test "anchors recognize practical shared evidence" {
  let source = segment_text("Use MoonAlign v2 at https://moonbitlang.com.")
  let target = segment_text("Use MoonAlign v2 at https://moonbitlang.com.")
  let anchors = match_anchors(source, target)
  assert_true(anchors.length() >= 2)
  assert_true(anchor_kind_counts(anchors).contains("word"))
}

///|
test "batch validation catches duplicate and empty documents" {
  let documents = [
    corpus_document(id="same", source="A.", target="甲。"),
    corpus_document(id="same", source="", target=""),
  ]
  let errors = validate_corpus(documents)
  assert_true(errors.length() >= 3)
}

///|
test "batch summary and quality csv are deterministic" {
  let results = align_corpus(synthetic_corpus(3))
  let summary = summarize_corpus(results)
  assert_eq(summary.document_count, 3)
  assert_eq(summary.total_pairs, 6)
  assert_true(corpus_quality_csv(results).contains("quality"))
}

///|
test "review queue separates accepted and pending work" {
  let result = align_document(
    corpus_document(
      id="review",
      source="MoonAlign is stable.",
      target="MoonAlign 很稳定。",
    ),
  )
  let queue = make_review_queue(result)
  assert_eq(queue.items.length(), result.report.pairs.length())
  assert_eq(
    queue.accepted + queue.needs_review + queue.rejected,
    queue.items.length(),
  )
  assert_true(review_summary(queue).contains("accepted="))
}

///|
test "statistics remain finite for empty input" {
  let stats = length_stats([])
  assert_eq(stats.count, 0)
  assert_eq(stats.total, 0.0)
  assert_eq(length_ratio([], []), 0.0)
  assert_true(text_profile("").contains("units=0"))
}

///|
test "corpus tsv parser ignores comments and malformed rows" {
  let text = "# header\nalpha\tA.\t甲。\nmalformed\n"
  let documents = parse_corpus_tsv(text)
  assert_eq(documents.length(), 1)
  assert_eq(documents[0].id, "alpha")
}

///|
test "quality gate is strict for empty confidence" {
  let report = align("", "")
  let quality = assess_quality(report)
  assert_true(!passes_quality_gate(quality))
  assert_true(quality_recommendations(quality).length() > 0)
}

///|
test "formatters preserve line boundaries and identifiers" {
  let results = align_corpus([
    corpus_document(id="doc-1", source="A.\nB.", target="甲。\n乙。"),
  ])
  assert_true(corpus_to_tsv(results).contains("doc-1"))
  assert_true(
    review_queue_to_tsv(make_review_queue(results[0])).contains("pair_index"),
  )
}

///|
test "synthetic corpus has bounded construction" {
  assert_eq(synthetic_corpus(-5).length(), 0)
  assert_eq(synthetic_corpus(4).length(), 4)
  assert_eq(synthetic_corpus(2000).length(), 1000)
}

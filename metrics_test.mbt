///|
test "metrics report exact matches and coverage" {
  let report = @moonalign.align("One.\nTwo.\n", "一。\n二。\n")
  let gold : Array[@moonalign.GoldPair] = [
    @moonalign.gold_pair(
      source_start=0,
      source_end=1,
      target_start=0,
      target_end=1,
    ),
    @moonalign.gold_pair(
      source_start=1,
      source_end=2,
      target_start=1,
      target_end=2,
    ),
  ]
  let metrics = @moonalign.evaluate(report, gold)
  assert_eq(metrics.exact_pairs, 2)
  assert_eq(metrics.predicted_pairs, 2)
  assert_eq(metrics.gold_pairs, 2)
  assert_true(metrics.f1 > 0.99)
  assert_true(metrics.source_coverage > 0.99)
  assert_true(metrics.target_coverage > 0.99)
}

///|
test "empty and extreme inputs remain diagnosable" {
  let empty = @moonalign.align(" \r\n", "\n")
  assert_eq(empty.pairs.length(), 0)
  assert_true(empty.warnings.length() > 0)
  let extreme = @moonalign.align(
    "Short.", "这是一个非常非常长的目标句子，用来触发比例诊断。",
  )
  assert_true(extreme.warnings.length() > 0)
  let metrics = @moonalign.evaluate(empty, [])
  assert_eq(metrics.precision, 0.0)
  assert_eq(metrics.recall, 0.0)
}

///|
test "benchmark fixtures are reproducible" {
  let cases = @moonalign.benchmark_cases()
  assert_eq(cases.length(), 2)
  assert_true(cases[0].source_url.contains("tatoeba.org"))
  let results = @moonalign.benchmark_suite()
  assert_eq(results.length(), cases.length())
  assert_true(results[0].metrics.predicted_pairs > 0)
  assert_true(results[0].metrics.average_score >= 0.0)
  assert_true(
    @moonalign.benchmark_to_json_string().contains("tatoeba-eng-cmn-short"),
  )
}

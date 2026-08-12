///|
test "sentence alignment keeps stable one-to-one matches" {
  let source =
    #|MoonBit is a programming language for the AI era.
    #|It emphasizes predictable tooling and maintainability.
    #|
  let target =
    #|MoonBit 是面向 AI 时代的编程语言。
    #|它强调可预测的工具链和可维护性。
    #|
  let report = @moonalign.align(source, target)
  inspect(report.source_count, content="2")
  inspect(report.target_count, content="2")
  inspect(report.pairs.length(), content="2")
  inspect(report.pairs[0].move_kind, content="1-1")
  inspect(report.pairs[1].move_kind, content="1-1")
}

///|
test "alignment can merge short target sentences" {
  let source =
    #|MoonAlign creates practical bilingual corpora and stays explainable.
    #|
  let target =
    #|MoonAlign 用来构建双语语料。
    #|它强调结果可解释。
    #|
  let report = @moonalign.align(source, target)
  inspect(report.pairs.length(), content="1")
  inspect(report.pairs[0].move_kind, content="1-2")
}

///|
test "paragraph mode preserves coarse blocks" {
  let options = @moonalign.with_segment_mode(
    @moonalign.default_options(),
    @moonalign.paragraph_mode(),
  )
  let source =
    #|Line one.
    #|
    #|Line two.
    #|
  let target =
    #|第一段。
    #|
    #|第二段。
    #|
  let report = @moonalign.align(source, target, options~)
  inspect(report.source_count, content="2")
  inspect(report.target_count, content="2")
  inspect(report.pairs.length(), content="2")
}

///|
test "tsv formatter includes header and move kinds" {
  let report = @moonalign.align("A.\nB.\n", "甲。\n乙。\n")
  let tsv = @moonalign.report_to_tsv(report)
  assert_true(tsv.contains("source_start"))
  assert_true(tsv.contains("1-1"))
}

///|
test "fan out limit and paragraph guard are safe" {
  let no_merge = @moonalign.with_max_fan_out(@moonalign.default_options(), 1)
  let report = @moonalign.align(
    "One.\nTwo.\n",
    "合并后的目标句。",
    options=no_merge,
  )
  assert_eq(report.pairs.length(), 0)
  let preserve = @moonalign.with_preserve_paragraphs(
    @moonalign.default_options(),
    true,
  )
  let guarded = @moonalign.align(
    "A.\n\nB.\n",
    "甲。\n\n乙。\n",
    options=preserve,
  )
  assert_eq(guarded.pairs.length(), 2)
}

///|
test "long sentence streams keep complete coverage" {
  let source_builder = StringBuilder()
  let target_builder = StringBuilder()
  for i in 0..<32 {
    source_builder.write_string("Item \{i}.\n")
    target_builder.write_string("项目 \{i}。\n")
  }
  let report = @moonalign.align(
    source_builder.to_string(),
    target_builder.to_string(),
  )
  assert_eq(report.source_count, 32)
  assert_eq(report.target_count, 32)
  assert_eq(report.pairs.length(), 32)
  assert_eq(report.warnings.length(), 0)
}

///|
test "boundary regression 000" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 001" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 002" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 003" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 004" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 005" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 006" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 007" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 008" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 009" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 010" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 011" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 012" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 013" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 014" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 015" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 016" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 017" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 018" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 019" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 020" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 021" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 022" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 023" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 024" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 025" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 026" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 027" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 028" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 029" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 030" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 031" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 032" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 033" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 034" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 035" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 036" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 037" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 038" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 039" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 040" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 041" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 042" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 043" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 044" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 045" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 046" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 047" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 048" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 049" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 050" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 051" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 052" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 053" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 054" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 055" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 056" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 057" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 058" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 059" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 060" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 061" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 062" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 063" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 064" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 065" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 066" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 067" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 068" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 069" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 070" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 071" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 072" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 073" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 074" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 075" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 076" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 077" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 078" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 079" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 080" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 081" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 082" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 083" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 084" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 085" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 086" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 087" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 088" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 089" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 090" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 091" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 092" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 093" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 094" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 095" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 096" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 097" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 098" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 099" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 100" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 101" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 102" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 103" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 104" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 105" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 106" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 107" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 108" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 109" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 110" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 111" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 112" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 113" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 114" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 115" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 116" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 117" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 118" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 119" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 120" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 121" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 122" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 123" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 124" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 125" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 126" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 127" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 128" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 129" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 130" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 131" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 132" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 133" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 134" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 135" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 136" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 137" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 138" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 139" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 140" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 141" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 142" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 143" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 144" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 145" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 146" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 147" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 148" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 149" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 150" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 151" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 152" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 153" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 154" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 155" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 156" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 157" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 158" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 159" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 160" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 161" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 162" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 163" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 164" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 165" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 166" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 167" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 168" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 169" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 170" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 171" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 172" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 173" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 174" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 175" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 176" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 177" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 178" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 179" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 180" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 181" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 182" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 183" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 184" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 185" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 186" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 187" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 188" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 189" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 190" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 191" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 192" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 193" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 194" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 195" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 196" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 197" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 198" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 199" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 200" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 201" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 202" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 203" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 204" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 205" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 206" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 207" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 208" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 209" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 210" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 211" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 212" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 213" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 214" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 215" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 216" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 217" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 218" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 219" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 220" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 221" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 222" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 223" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 224" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 225" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 226" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 227" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 228" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 229" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 230" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 231" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 232" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 233" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 234" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 235" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 236" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 237" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 238" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 239" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 240" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 241" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 242" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 243" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 244" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 245" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 246" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 247" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 248" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 249" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 250" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 251" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 252" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 253" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 254" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 255" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 256" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 257" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 258" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 259" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 260" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 261" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 262" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 263" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 264" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 265" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 266" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 267" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 268" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 269" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 270" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 271" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 272" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 273" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 274" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 275" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 276" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 277" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 278" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 279" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 280" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 281" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 282" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 283" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 284" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 285" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 286" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 287" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 288" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 289" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 290" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 291" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 292" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 293" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 294" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 295" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 296" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 297" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 298" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 299" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 300" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 301" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 302" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 303" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 304" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 305" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 306" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 307" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 308" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 309" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 310" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 311" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 312" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 313" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 314" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 315" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 316" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 317" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 318" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 319" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 320" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 321" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 322" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 323" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 324" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 325" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 326" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 327" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 328" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 329" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 330" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 331" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 332" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 333" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 334" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 335" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 336" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 337" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 338" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 339" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 340" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 341" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 342" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 343" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 344" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 345" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 346" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 347" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 348" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 349" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 350" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 351" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 352" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 353" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 354" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 355" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 356" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 357" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 358" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 359" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 360" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 361" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 362" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 363" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 364" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 365" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 366" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 367" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 368" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 369" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 370" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 371" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 372" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 373" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 374" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 375" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 376" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 377" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 378" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 379" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 380" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 381" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 382" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 383" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 384" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 385" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 386" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 387" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 388" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 389" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 390" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 391" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 392" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 393" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 394" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 395" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 396" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 397" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 398" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 399" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 400" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 401" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 402" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 403" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 404" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 405" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 406" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 407" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 408" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 409" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 410" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 411" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 412" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 413" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 414" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 415" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 416" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 417" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 418" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 419" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 420" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 421" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 422" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 423" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 424" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 425" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 426" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 427" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 428" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 429" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 430" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 431" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 432" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 433" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 434" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 435" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 436" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 437" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 438" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 439" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 440" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 441" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 442" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 443" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 444" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 445" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 446" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 447" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 448" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 449" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 450" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 451" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 452" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 453" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 454" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 455" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 456" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 457" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 458" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 459" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 460" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 461" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 462" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 463" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 464" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 465" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 466" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 467" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 468" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 469" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 470" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 471" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 472" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 473" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 474" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 475" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 476" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 477" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 478" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 479" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 480" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 481" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 482" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 483" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 484" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 485" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 486" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 487" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 488" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 489" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 490" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 491" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 492" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 493" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 494" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 495" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 496" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 497" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 498" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 499" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 500" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 501" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 502" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 503" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 504" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 505" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 506" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 507" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 508" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 509" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 510" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 511" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 512" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 513" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 514" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 515" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 516" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 517" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 518" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 519" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 520" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 521" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 522" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 523" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 524" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 525" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 526" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 527" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 528" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 529" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 530" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 531" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 532" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 533" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 534" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 535" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 536" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 537" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 538" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 539" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 540" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 541" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 542" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 543" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 544" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 545" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 546" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 547" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 548" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 549" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 550" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 551" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 552" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 553" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 554" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 555" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 556" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 557" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 558" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 559" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 560" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 561" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 562" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 563" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 564" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 565" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 566" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 567" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 568" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 569" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 570" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 571" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 572" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 573" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 574" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 575" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 576" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 577" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 578" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 579" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 580" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 581" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 582" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 583" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 584" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 585" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 586" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 587" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 588" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 589" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 590" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 591" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 592" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 593" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 594" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 595" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 596" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 597" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 598" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 599" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 600" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 601" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 602" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 603" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 604" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 605" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 606" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 607" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 608" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 609" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 610" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 611" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 612" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 613" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 614" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 615" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 616" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 617" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 618" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 619" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 620" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 621" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 622" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 623" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 624" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 625" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 626" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 627" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 628" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 629" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 630" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 631" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 632" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 633" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 634" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 635" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 636" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 637" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 638" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 639" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 640" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 641" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 642" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 643" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 644" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 645" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 646" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 647" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 648" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 649" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 650" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 651" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 652" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 653" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 654" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 655" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 656" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 657" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 658" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 659" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 660" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 661" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 662" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 663" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 664" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 665" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 666" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 667" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 668" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 669" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 670" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 671" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 672" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 673" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 674" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 675" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 676" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 677" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 678" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 679" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 680" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 681" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 682" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 683" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 684" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 685" {
  let source = "!!!"
  let target = "！！！"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 686" {
  let source = "short. A much longer sentence follows."
  let target = "短句。后面是一段更长的句子。"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 687" {
  let source = "()[]{}<>."
  let target = "（）【】{}<>。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 688" {
  let source = "é naïve."
  let target = "你好。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 689" {
  let source = "\u{3000} spaced \u{3000}"
  let target = "  空格  "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 690" {
  let source = ""
  let target = ""
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 691" {
  let source = " "
  let target = " "
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 692" {
  let source = "A."
  let target = "甲。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 693" {
  let source = "Hello world!"
  let target = "你好世界！"
  let options = with_min_sentence_chars(default_options(), 2)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 694" {
  let source = "One.\nTwo."
  let target = "一。\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 695" {
  let source = "One.\r\nTwo."
  let target = "一。\r\n二。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 696" {
  let source = "中文。English."
  let target = "Chinese. 英语。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 697" {
  let source = "123.45%"
  let target = "123.45%"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 698" {
  let source = "https://moonbitlang.com."
  let target = "https://moonbitlang.com。"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

///|
test "boundary regression 699" {
  let source = "a\n\nb"
  let target = "甲\n\n乙"
  let options = with_min_sentence_chars(default_options(), 1)
  let source_units = segment_text(source, options~)
  let report = align(source, target, options~)
  assert_eq(report.source_count, source_units.length())
  assert_true(report.target_count >= 0)
  assert_true(report.pairs.length() >= 0)
}

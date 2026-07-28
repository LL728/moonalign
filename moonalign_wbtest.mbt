///|
test "normalization collapses noisy whitespace" {
  inspect(normalize_text(" a\t b \r\n\r\n c "), content="a b\nc")
}

///|
test "sentence segmentation respects punctuation" {
  let units = segment_text(
    "Hello world. Another line!\n\n中文句子。第二句？",
    options=default_options(),
  )
  inspect(units.length(), content="4")
}

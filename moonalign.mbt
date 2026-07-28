///|
pub fn align(
  source_text : String,
  target_text : String,
  options? : AlignOptions = default_options(),
) -> AlignmentReport {
  align_texts(source_text, target_text, options~)
}

///|
pub fn align_with_mode(
  source_text : String,
  target_text : String,
  mode? : SegmentMode = Sentence,
) -> AlignmentReport {
  let options = { ..default_options(), segment_mode: mode }
  align_texts(source_text, target_text, options~)
}

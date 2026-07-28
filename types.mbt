///|
pub enum SegmentMode {
  Paragraph
  Sentence
} derive(Debug, Eq)

///|
pub struct AlignOptions {
  segment_mode : SegmentMode
  max_fan_out : Int
  join_penalty : Double
  deviation_penalty : Double
  min_sentence_chars : Int
  preserve_paragraphs : Bool
} derive(Debug)

///|
pub struct TextUnit {
  id : Int
  paragraph_index : Int
  sentence_index : Int
  text : String
  normalized : String
  char_weight : Double
  token_count : Int
} derive(Debug, ToJson)

///|
pub struct AlignmentPair {
  source_start : Int
  source_end : Int
  target_start : Int
  target_end : Int
  source_text : String
  target_text : String
  source_char_weight : Double
  target_char_weight : Double
  source_tokens : Int
  target_tokens : Int
  score : Double
  move_kind : String
} derive(Debug, ToJson)

///|
pub struct AlignmentReport {
  options : Json
  source_count : Int
  target_count : Int
  estimated_ratio : Double
  warnings : Array[String]
  pairs : Array[AlignmentPair]
} derive(Debug, ToJson)

///|
struct BackPointer {
  prev_i : Int
  prev_j : Int
  source_take : Int
  target_take : Int
  step_score : Double
  move_kind : String
} derive(Debug, Eq)

///|
pub fn default_options() -> AlignOptions {
  {
    segment_mode: Sentence,
    max_fan_out: 2,
    join_penalty: 0.35,
    deviation_penalty: 1.4,
    min_sentence_chars: 2,
    preserve_paragraphs: false,
  }
}

///|
pub fn sentence_mode() -> SegmentMode {
  Sentence
}

///|
pub fn paragraph_mode() -> SegmentMode {
  Paragraph
}

///|
pub fn with_segment_mode(
  options : AlignOptions,
  mode : SegmentMode,
) -> AlignOptions {
  { ..options, segment_mode: mode }
}

///|
pub fn options_to_json(options : AlignOptions) -> Json {
  Json::object({
    "segment_mode": Json::string(
      match options.segment_mode {
        Paragraph => "paragraph"
        Sentence => "sentence"
      },
    ),
    "max_fan_out": Json::number(options.max_fan_out.to_double()),
    "join_penalty": Json::number(options.join_penalty),
    "deviation_penalty": Json::number(options.deviation_penalty),
    "min_sentence_chars": Json::number(options.min_sentence_chars.to_double()),
    "preserve_paragraphs": Json::boolean(options.preserve_paragraphs),
  })
}

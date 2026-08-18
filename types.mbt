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
pub struct GoldPair {
  source_start : Int
  source_end : Int
  target_start : Int
  target_end : Int
} derive(Debug, Eq, ToJson)

///|
pub fn gold_pair(
  source_start~ : Int,
  source_end~ : Int,
  target_start~ : Int,
  target_end~ : Int,
) -> GoldPair {
  { source_start, source_end, target_start, target_end }
}

///|
pub struct AlignmentMetrics {
  predicted_pairs : Int
  gold_pairs : Int
  exact_pairs : Int
  precision : Double
  recall : Double
  f1 : Double
  source_coverage : Double
  target_coverage : Double
  merged_pairs : Int
  average_score : Double
} derive(Debug, ToJson)

///|
pub struct BenchmarkCase {
  name : String
  source : String
  target : String
  gold_pairs : Array[GoldPair]
  source_url : String
  license : String
} derive(Debug, ToJson)

///|
pub struct BenchmarkResult {
  name : String
  metrics : AlignmentMetrics
  warnings : Array[String]
} derive(Debug, ToJson)

///|
/// A lexical anchor found in both sides of a bilingual document.
///
/// Anchors are intentionally lightweight: they are useful for terminology,
/// identifiers, URLs, numbers, and names without requiring a language model.
pub struct LexicalAnchor {
  source_unit : Int
  target_unit : Int
  source_text : String
  target_text : String
  normalized : String
  kind : String
  score : Double
} derive(Debug, ToJson)

///|
/// A configurable set of deterministic anchor extraction rules.
pub struct AnchorOptions {
  min_token_length : Int
  include_numbers : Bool
  include_urls : Bool
  include_identifiers : Bool
  case_sensitive : Bool
  max_anchors_per_unit : Int
} derive(Debug)

///|
/// A document-level quality diagnostic.
pub struct QualityIssue {
  code : String
  severity : String
  message : String
  source_unit : Int?
  target_unit : Int?
} derive(Debug, ToJson)

///|
/// Quality statistics suitable for CI regression checks.
pub struct AlignmentQuality {
  source_units : Int
  target_units : Int
  aligned_pairs : Int
  exact_one_to_one : Int
  merged_pairs : Int
  anchored_pairs : Int
  source_coverage : Double
  target_coverage : Double
  mean_confidence : Double
  monotonicity : Double
  score : Double
  issues : Array[QualityIssue]
} derive(Debug, ToJson)

///|
/// A named bilingual document in a batch.
pub struct CorpusDocument {
  id : String
  source : String
  target : String
  metadata : Map[String, String]
} derive(Debug)

///|
/// A batch alignment result with aggregate quality information.
pub struct CorpusResult {
  id : String
  report : AlignmentReport
  quality : AlignmentQuality
} derive(Debug, ToJson)

///|
/// Aggregate statistics over a batch run.
pub struct CorpusSummary {
  document_count : Int
  total_source_units : Int
  total_target_units : Int
  total_pairs : Int
  mean_f1 : Double
  mean_quality_score : Double
  warning_count : Int
  issue_count : Int
} derive(Debug, ToJson)

///|
/// Thresholds used by automated quality gates.
pub struct QualityGate {
  min_source_coverage : Double
  min_target_coverage : Double
  min_mean_confidence : Double
  min_quality_score : Double
  max_warning_count : Int
} derive(Debug)

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
pub fn with_max_fan_out(
  options : AlignOptions,
  max_fan_out : Int,
) -> AlignOptions {
  { ..options, max_fan_out: if max_fan_out < 1 { 1 } else { max_fan_out } }
}

///|
pub fn with_min_sentence_chars(
  options : AlignOptions,
  min_sentence_chars : Int,
) -> AlignOptions {
  {
    ..options,
    min_sentence_chars: if min_sentence_chars < 1 {
      1
    } else {
      min_sentence_chars
    },
  }
}

///|
pub fn with_preserve_paragraphs(
  options : AlignOptions,
  preserve : Bool,
) -> AlignOptions {
  { ..options, preserve_paragraphs: preserve }
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

///|
/// Return conservative defaults for lexical anchor extraction.
pub fn default_anchor_options() -> AnchorOptions {
  {
    min_token_length: 3,
    include_numbers: true,
    include_urls: true,
    include_identifiers: true,
    case_sensitive: false,
    max_anchors_per_unit: 8,
  }
}

///|
/// Return thresholds appropriate for human review queues.
pub fn default_quality_gate() -> QualityGate {
  {
    min_source_coverage: 0.98,
    min_target_coverage: 0.98,
    min_mean_confidence: 0.45,
    min_quality_score: 0.60,
    max_warning_count: 3,
  }
}

///|
/// Create a corpus document without requiring a mutable metadata map.
pub fn corpus_document(
  id~ : String,
  source~ : String,
  target~ : String,
) -> CorpusDocument {
  { id, source, target, metadata: {} }
}

///|
/// Add or replace a metadata field on a corpus document.
pub fn CorpusDocument::with_metadata(
  document : CorpusDocument,
  key~ : String,
  value~ : String,
) -> CorpusDocument {
  let metadata = document.metadata
  metadata[key] = value
  { ..document, metadata, }
}

///|
/// Create a quality issue with optional unit locations.
pub fn quality_issue(
  code~ : String,
  severity~ : String,
  message~ : String,
  source_unit? : Int,
  target_unit? : Int,
) -> QualityIssue {
  { code, severity, message, source_unit, target_unit }
}

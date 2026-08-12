///|
fn print_help() -> Unit {
  let text =
    #|MoonAlign
    #|
    #|Usage:
    #|  moon run cmd/main -- --source-text <text> --target-text <text> [--mode sentence|paragraph] [--format json|tsv]
    #|
    #|Options:
    #|  --source-text     Source-language plain text
    #|  --target-text     Target-language plain text
    #|  --mode <name>     sentence (default) or paragraph
    #|  --format <name>   json (default) or tsv
    #|  --benchmark       Run the built-in reproducible benchmark suite
    #|  --help            Show this message
  println(text)
}

///|
fn parse_mode(value : String) -> @moonalign.SegmentMode {
  if value == "paragraph" {
    @moonalign.paragraph_mode()
  } else {
    @moonalign.sentence_mode()
  }
}

///|
fn parse_args(args : Array[String]) -> Map[String, String] {
  let parsed = Map([])
  let mut i = 0
  while i < args.length() {
    let current = args[i]
    if current == "--help" {
      parsed["help"] = "true"
      i += 1
    } else if current == "--benchmark" {
      parsed["benchmark"] = "true"
      i += 1
    } else if current.has_prefix("--") && i + 1 < args.length() {
      parsed[current.strip_prefix("--").unwrap().to_owned()] = args[i + 1]
      i += 2
    } else {
      i += 1
    }
  }
  parsed
}

///|
fn main {
  let argv = @env.args()
  let args = if argv.length() > 0 { argv[1:].to_owned() } else { [] }
  let parsed = parse_args(args)
  if parsed.contains("benchmark") {
    println(@moonalign.benchmark_to_json_string())
    return
  }
  if parsed.contains("help") ||
    !parsed.contains("source-text") ||
    !parsed.contains("target-text") {
    print_help()
    return
  }

  let source_text = parsed["source-text"]
  let target_text = parsed["target-text"]
  let options = @moonalign.with_segment_mode(
    @moonalign.default_options(),
    parse_mode(parsed.get_or_default("mode", "sentence")),
  )
  let report = @moonalign.align(source_text, target_text, options~)
  let format = parsed.get_or_default("format", "json")
  let rendered = if format == "tsv" {
    @moonalign.report_to_tsv(report)
  } else {
    @moonalign.report_to_json_string(report)
  }
  println(rendered)
}

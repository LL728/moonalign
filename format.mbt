///|
pub fn report_to_json_string(
  report : AlignmentReport,
  indent? : Int = 2,
) -> String {
  report.to_json().stringify(indent~)
}

///|
pub fn report_to_tsv(report : AlignmentReport) -> String {
  let out = StringBuilder()
  out.write_string(
    "source_start\tsource_end\ttarget_start\ttarget_end\tmove_kind\tscore\tsource_text\ttarget_text\n",
  )
  for pair in report.pairs {
    let source_text = pair.source_text.replace_all(old="\n", new=" ⏎ ")
    let target_text = pair.target_text.replace_all(old="\n", new=" ⏎ ")
    out.write_string(
      "\{pair.source_start}\t\{pair.source_end}\t\{pair.target_start}\t\{pair.target_end}\t\{pair.move_kind}\t\{pair.score}\t\{source_text}\t\{target_text}\n",
    )
  }
  out.to_string()
}

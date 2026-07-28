///|
fn is_sentence_boundary(c : Char) -> Bool {
  c == '。' ||
  c == '！' ||
  c == '？' ||
  c == '.' ||
  c == '!' ||
  c == '?' ||
  c == ';' ||
  c == '；'
}

///|
fn is_soft_space(c : Char) -> Bool {
  c.is_whitespace() || c == '\u{3000}'
}

///|
fn is_wordish(c : Char) -> Bool {
  c.is_ascii_alphabetic() ||
  c.is_ascii_digit() ||
  (
    !c.is_ascii() &&
    !c.is_whitespace() &&
    !is_sentence_boundary(c) &&
    c != '，' &&
    c != ',' &&
    c != '、' &&
    c != ':' &&
    c != '：'
  )
}

///|
fn char_weight(c : Char) -> Double {
  if c.is_whitespace() {
    0.0
  } else if c.is_ascii_alphabetic() || c.is_ascii_digit() {
    0.55
  } else if c.is_ascii_punctuation() {
    0.2
  } else {
    1.0
  }
}

///|
pub fn normalize_text(text : String) -> String {
  let replaced = text
    .replace_all(old="\r\n", new="\n")
    .replace_all(old="\r", new="\n")
  let out = StringBuilder()
  let mut just_wrote_line = false
  for raw_line in replaced.split("\n").to_array() {
    let line = raw_line.to_owned()
    let line_out = StringBuilder()
    let mut prev_space = false
    for c in line {
      if is_soft_space(c) {
        if !prev_space {
          line_out.write_char(' ')
        }
        prev_space = true
      } else {
        line_out.write_char(c)
        prev_space = false
      }
    }
    let normalized_line = line_out.to_string().trim().to_owned()
    if !normalized_line.is_empty() {
      if just_wrote_line {
        out.write_char('\n')
      }
      out.write_string(normalized_line)
      just_wrote_line = true
    }
  }
  out.to_string().trim().to_owned()
}

///|
fn append_unit(
  units : Array[TextUnit],
  text : String,
  paragraph_index : Int,
  sentence_index : Int,
) -> Unit {
  let normalized = normalize_text(text)
  if normalized.is_empty() {
    ()
  } else {
    let mut weight = 0.0
    let mut in_token = false
    let mut token_count = 0
    for c in normalized {
      weight += char_weight(c)
      let wordish = is_wordish(c)
      if wordish && !in_token {
        token_count += 1
      }
      in_token = wordish
    }
    units.push({
      id: units.length(),
      paragraph_index,
      sentence_index,
      text: text.trim().to_owned(),
      normalized,
      char_weight: weight,
      token_count,
    })
  }
}

///|
fn split_paragraph_text(text : String) -> Array[String] {
  let lines = text
    .replace_all(old="\r\n", new="\n")
    .replace_all(old="\r", new="\n")
    .split("\n")
    .to_array()
  let paragraphs = []
  let mut current = ""
  for line in lines {
    let trimmed = line.to_owned().trim().to_owned()
    if trimmed.is_empty() {
      if !current.trim().is_empty() {
        paragraphs.push(current.trim().to_owned())
        current = ""
      }
    } else {
      let normalized_line = normalize_text(trimmed)
      if !current.is_empty() {
        current = current + "\n"
      }
      current = current + normalized_line
    }
  }
  if !current.trim().is_empty() {
    paragraphs.push(current.trim().to_owned())
  }
  paragraphs
}

///|
pub fn segment_text(
  text : String,
  options? : AlignOptions = default_options(),
) -> Array[TextUnit] {
  let paragraphs = split_paragraph_text(text)
  let units = []
  match options.segment_mode {
    Paragraph =>
      for paragraph_index, paragraph in paragraphs {
        append_unit(units, paragraph, paragraph_index, 0)
      }
    Sentence =>
      for paragraph_index, paragraph in paragraphs {
        let mut current = ""
        let mut sentence_index = 0
        for c in paragraph {
          current = current + "\{c}"
          if is_sentence_boundary(c) || c == '\n' {
            let candidate = current.trim().to_owned()
            if candidate.char_length() >= options.min_sentence_chars {
              append_unit(units, candidate, paragraph_index, sentence_index)
              sentence_index += 1
              current = ""
            }
          }
        }
        let tail = current.trim().to_owned()
        if !tail.is_empty() {
          append_unit(units, tail, paragraph_index, sentence_index)
        }
      }
  }
  units
}

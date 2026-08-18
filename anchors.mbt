///|
fn anchor_is_ascii_word(c : Char) -> Bool {
  c.is_ascii_alphabetic() || c.is_ascii_digit() || c == '_' || c == '-'
}

///|
fn anchor_is_number(text : String) -> Bool {
  if text.is_empty() {
    return false
  }
  let mut seen_digit = false
  let mut valid = true
  for c in text {
    if c.is_ascii_digit() {
      seen_digit = true
    } else if c != '.' && c != ',' && c != '%' && c != '-' {
      valid = false
    }
  }
  seen_digit && valid
}

///|
fn anchor_is_url(text : String) -> Bool {
  text.has_prefix("http://") ||
  text.has_prefix("https://") ||
  text.has_prefix("www.")
}

///|
fn anchor_is_identifier(text : String) -> Bool {
  if text.is_empty() {
    return false
  }
  let mut has_letter = false
  let mut valid = true
  for c in text {
    if c.is_ascii_alphabetic() {
      has_letter = true
    } else if !anchor_is_ascii_word(c) {
      valid = false
    }
  }
  has_letter &&
  valid &&
  (text.contains("_") || text.contains("-") || text.contains("/"))
}

///|
fn anchor_normalize(text : String, case_sensitive : Bool) -> String {
  let value = text.trim().to_owned()
  if case_sensitive {
    value
  } else {
    value.to_lower()
  }
}

///|
fn anchor_tokenize(text : String) -> Array[String] {
  let out = []
  let mut current = ""
  for c in text {
    if anchor_is_ascii_word(c) || !c.is_ascii() {
      current = current + "{c}"
    } else if !current.is_empty() {
      out.push(current)
      current = ""
    }
  }
  if !current.is_empty() {
    out.push(current)
  }
  out
}

///|
fn anchor_kind(token : String, options : AnchorOptions) -> String? {
  if options.include_urls && anchor_is_url(token) {
    return Some("url")
  }
  if options.include_numbers && anchor_is_number(token) {
    return Some("number")
  }
  if options.include_identifiers && anchor_is_identifier(token) {
    return Some("identifier")
  }
  if token.char_length() >= options.min_token_length &&
    token.to_array().iter().any(fn(c) { c.is_ascii_alphabetic() }) {
    Some("word")
  } else {
    None
  }
}

///|
fn anchor_weight(kind : String, token : String) -> Double {
  let base = match kind {
    "url" => 1.0
    "number" => 0.95
    "identifier" => 0.9
    _ => 0.55
  }
  base + token.char_length().min(24).to_double() / 100.0
}

///|
/// Extract deterministic anchors from segmented units.
pub fn extract_anchors(
  units : Array[TextUnit],
  options? : AnchorOptions = default_anchor_options(),
) -> Array[LexicalAnchor] {
  let anchors = []
  for unit in units {
    let seen : Map[String, Bool] = Map([])
    for token in anchor_tokenize(unit.normalized) {
      let normalized = anchor_normalize(token, options.case_sensitive)
      if seen.contains(normalized) {
        continue
      }
      match anchor_kind(token, options) {
        Some(kind) => {
          seen[normalized] = true
          anchors.push({
            source_unit: unit.id,
            target_unit: unit.id,
            source_text: token,
            target_text: token,
            normalized,
            kind,
            score: anchor_weight(kind, token),
          })
        }
        None => ()
      }
      if anchors.length() >= options.max_anchors_per_unit * (unit.id + 1) {
        break
      }
    }
  }
  anchors
}

///|
/// Return normalized token overlap between two units.
pub fn token_overlap(left : TextUnit, right : TextUnit) -> Double {
  let left_tokens = anchor_tokenize(left.normalized)
  let right_tokens = anchor_tokenize(right.normalized)
  if left_tokens.is_empty() || right_tokens.is_empty() {
    return 0.0
  }
  let right_set : Map[String, Bool] = Map([])
  for token in right_tokens {
    right_set[anchor_normalize(token, false)] = true
  }
  let mut common = 0
  let seen : Map[String, Bool] = Map([])
  for token in left_tokens {
    let key = anchor_normalize(token, false)
    if right_set.contains(key) && !seen.contains(key) {
      common += 1
      seen[key] = true
    }
  }
  2.0 *
  common.to_double() /
  (left_tokens.length() + right_tokens.length()).to_double()
}

///|
/// Create cross-language anchor candidates using shared normalized tokens.
pub fn match_anchors(
  source_units : Array[TextUnit],
  target_units : Array[TextUnit],
  options? : AnchorOptions = default_anchor_options(),
) -> Array[LexicalAnchor] {
  let result = []
  for source in source_units {
    let source_tokens = anchor_tokenize(source.normalized)
    let mut added = 0
    for target in target_units {
      if added >= options.max_anchors_per_unit {
        break
      }
      let target_tokens = anchor_tokenize(target.normalized)
      for source_token in source_tokens {
        let source_key = anchor_normalize(source_token, options.case_sensitive)
        match anchor_kind(source_token, options) {
          Some(kind) => {
            let mut found = false
            for target_token in target_tokens {
              if source_key ==
                anchor_normalize(target_token, options.case_sensitive) {
                result.push({
                  source_unit: source.id,
                  target_unit: target.id,
                  source_text: source_token,
                  target_text: target_token,
                  normalized: source_key,
                  kind,
                  score: anchor_weight(kind, source_token),
                })
                added += 1
                found = true
                break
              }
            }
            if found {
              break
            }
          }
          None => ()
        }
      }
    }
  }
  result
}

///|
/// Count anchors grouped by their category.
pub fn anchor_kind_counts(anchors : Array[LexicalAnchor]) -> Map[String, Int] {
  let counts : Map[String, Int] = Map([])
  for anchor in anchors {
    counts[anchor.kind] = counts.get_or_default(anchor.kind, 0) + 1
  }
  counts
}

///|
/// Compute an anchor bonus for a proposed alignment pair.
pub fn anchor_bonus(
  pair : AlignmentPair,
  anchors : Array[LexicalAnchor],
) -> Double {
  let mut score = 0.0
  for anchor in anchors {
    if anchor.source_unit >= pair.source_start &&
      anchor.source_unit < pair.source_end &&
      anchor.target_unit >= pair.target_start &&
      anchor.target_unit < pair.target_end {
      score += anchor.score
    }
  }
  score.min(3.0)
}

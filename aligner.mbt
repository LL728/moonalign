///|
fn total_char_weight(units : Array[TextUnit]) -> Double {
  units.fold(init=0.0, (acc, unit) => acc + unit.char_weight)
}

///|
fn idx(width : Int, i : Int, j : Int) -> Int {
  i * width + j
}

///|
fn group_char_weight(units : Array[TextUnit], start : Int, len : Int) -> Double {
  let mut total = 0.0
  for offset in 0..<len {
    total += units[start + offset].char_weight
  }
  total
}

///|
fn group_token_count(units : Array[TextUnit], start : Int, len : Int) -> Int {
  let mut total = 0
  for offset in 0..<len {
    total += units[start + offset].token_count
  }
  total
}

///|
fn group_text(units : Array[TextUnit], start : Int, len : Int) -> String {
  let parts = []
  for offset in 0..<len {
    parts.push(units[start + offset].text)
  }
  parts.join("\n")
}

///|
fn deviation_score(
  source_weight : Double,
  target_weight : Double,
  ratio : Double,
  options : AlignOptions,
) -> Double {
  let source_norm = if source_weight < 0.01 { 0.01 } else { source_weight }
  let target_norm = if target_weight < 0.01 { 0.01 } else { target_weight }
  let local_ratio = target_norm / source_norm
  let deviation = (local_ratio - ratio).abs()
  deviation * options.deviation_penalty
}

///|
fn move_penalty(
  source_take : Int,
  target_take : Int,
  options : AlignOptions,
) -> Double {
  let join_count = source_take + target_take - 2
  if join_count <= 0 {
    0.0
  } else {
    options.join_penalty * join_count.to_double()
  }
}

///|
fn estimated_ratio(
  source_units : Array[TextUnit],
  target_units : Array[TextUnit],
) -> Double {
  let source_total = total_char_weight(source_units)
  let target_total = total_char_weight(target_units)
  if source_total < 0.01 {
    1.0
  } else {
    target_total / source_total
  }
}

///|
fn collect_warnings(
  source_units : Array[TextUnit],
  target_units : Array[TextUnit],
  pairs : Array[AlignmentPair],
  ratio : Double,
) -> Array[String] {
  let warnings = []
  if source_units.is_empty() || target_units.is_empty() {
    warnings.push("one side is empty after segmentation")
  }
  if ratio < 0.35 || ratio > 3.2 {
    warnings.push(
      "global length ratio is unusual; inspect segmentation or source quality",
    )
  }
  let mut many_to_many = 0
  for pair in pairs {
    if pair.source_end - pair.source_start > 1 ||
      pair.target_end - pair.target_start > 1 {
      many_to_many += 1
    }
  }
  if many_to_many > pairs.length() / 3 && many_to_many > 0 {
    warnings.push(
      "many merged alignments were needed; consider paragraph mode or cleaner sentence boundaries",
    )
  }
  warnings
}

///|
pub fn align_units(
  source_units : Array[TextUnit],
  target_units : Array[TextUnit],
  options? : AlignOptions = default_options(),
) -> AlignmentReport {
  let n = source_units.length()
  let m = target_units.length()
  let width = m + 1
  let size = (n + 1) * (m + 1)
  let inf = 1000000000000000000.0
  let ratio = estimated_ratio(source_units, target_units)
  let dp = Array::make(size, inf)
  let back : Array[BackPointer?] = Array::make(size, None)
  dp[0] = 0.0

  for i in 0..<=n {
    for j in 0..<=m {
      let current_index = idx(width, i, j)
      let current = dp[current_index]
      if current >= inf / 2.0 {
        continue
      }
      for source_take in 1..<=options.max_fan_out {
        if i + source_take > n {
          continue
        }
        for target_take in 1..<=options.max_fan_out {
          if j + target_take > m {
            continue
          }
          if options.preserve_paragraphs {
            let left = source_units[i].paragraph_index
            let right = target_units[j].paragraph_index
            if left != right {
              continue
            }
          }
          let source_weight = group_char_weight(source_units, i, source_take)
          let target_weight = group_char_weight(target_units, j, target_take)
          let step_score = deviation_score(
              source_weight, target_weight, ratio, options,
            ) +
            move_penalty(source_take, target_take, options)
          let next_i = i + source_take
          let next_j = j + target_take
          let next_index = idx(width, next_i, next_j)
          let candidate = current + step_score
          if candidate < dp[next_index] {
            dp[next_index] = candidate
            back[next_index] = Some({
              prev_i: i,
              prev_j: j,
              source_take,
              target_take,
              step_score,
              move_kind: "\{source_take}-\{target_take}",
            })
          }
        }
      }
    }
  }

  let pairs = []
  let mut i = n
  let mut j = m
  while i > 0 || j > 0 {
    match back[idx(width, i, j)] {
      Some(step) => {
        let source_start = step.prev_i
        let target_start = step.prev_j
        pairs.push({
          source_start,
          source_end: i,
          target_start,
          target_end: j,
          source_text: group_text(source_units, source_start, step.source_take),
          target_text: group_text(target_units, target_start, step.target_take),
          source_char_weight: group_char_weight(
            source_units,
            source_start,
            step.source_take,
          ),
          target_char_weight: group_char_weight(
            target_units,
            target_start,
            step.target_take,
          ),
          source_tokens: group_token_count(
            source_units,
            source_start,
            step.source_take,
          ),
          target_tokens: group_token_count(
            target_units,
            target_start,
            step.target_take,
          ),
          score: step.step_score,
          move_kind: step.move_kind,
        })
        i = step.prev_i
        j = step.prev_j
      }
      None => {
        i = 0
        j = 0
      }
    }
  }
  pairs.rev_in_place()

  {
    options: options_to_json(options),
    source_count: n,
    target_count: m,
    estimated_ratio: ratio,
    warnings: collect_warnings(source_units, target_units, pairs, ratio),
    pairs,
  }
}

///|
pub fn align_texts(
  source_text : String,
  target_text : String,
  options? : AlignOptions = default_options(),
) -> AlignmentReport {
  let source_units = segment_text(source_text, options~)
  let target_units = segment_text(target_text, options~)
  align_units(source_units, target_units, options~)
}

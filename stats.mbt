///|
/// A transparent distribution of weighted text lengths.
pub struct LengthStats {
  count : Int
  total : Double
  minimum : Double
  maximum : Double
  mean : Double
  median : Double
  p90 : Double
} derive(Debug, ToJson)

///|
fn sorted_copy(values : Array[Double]) -> Array[Double] {
  let copy = values.copy()
  copy.sort()
  copy
}

///|
fn percentile(values : Array[Double], fraction : Double) -> Double {
  if values.is_empty() {
    return 0.0
  }
  let sorted = sorted_copy(values)
  let position = ((sorted.length() - 1).to_double() * fraction).round().to_int()
  sorted[position.max(0).min(sorted.length() - 1)]
}

///|
/// Compute min/max/mean/median/p90 from weighted units.
pub fn length_stats(units : Array[TextUnit]) -> LengthStats {
  let values = units.map(fn(unit) { unit.char_weight })
  if values.is_empty() {
    return {
      count: 0,
      total: 0.0,
      minimum: 0.0,
      maximum: 0.0,
      mean: 0.0,
      median: 0.0,
      p90: 0.0,
    }
  }
  let total = values.fold(init=0.0, (sum, value) => sum + value)
  {
    count: values.length(),
    total,
    minimum: values.fold(init=values[0], (a, b) => a.min(b)),
    maximum: values.fold(init=values[0], (a, b) => a.max(b)),
    mean: total / values.length().to_double(),
    median: percentile(values, 0.5),
    p90: percentile(values, 0.9),
  }
}

///|
/// Compute a weighted length ratio for two segmented documents.
pub fn length_ratio(
  source : Array[TextUnit],
  target : Array[TextUnit],
) -> Double {
  let left = length_stats(source).total
  let right = length_stats(target).total
  if left < 0.0001 {
    0.0
  } else {
    right / left
  }
}

///|
/// Count units by paragraph while keeping empty paragraphs visible in reports.
pub fn paragraph_histogram(units : Array[TextUnit]) -> Map[Int, Int] {
  let histogram : Map[Int, Int] = Map([])
  for unit in units {
    histogram[unit.paragraph_index] = histogram.get_or_default(
        unit.paragraph_index,
        0,
      ) +
      1
  }
  histogram
}

///|
/// Return all unit indexes whose normalized text is unusually short.
pub fn short_unit_indexes(
  units : Array[TextUnit],
  threshold? : Double = 2.0,
) -> Array[Int] {
  let indexes = []
  for unit in units {
    if unit.char_weight <= threshold {
      indexes.push(unit.id)
    }
  }
  indexes
}

///|
/// Return all repeated normalized units and their frequency.
pub fn repeated_units(units : Array[TextUnit]) -> Map[String, Int] {
  let counts : Map[String, Int] = Map([])
  for unit in units {
    counts[unit.normalized] = counts.get_or_default(unit.normalized, 0) + 1
  }
  let repeated : Map[String, Int] = Map([])
  for key, count in counts {
    if count > 1 {
      repeated[key] = count
    }
  }
  repeated
}

///|
/// Serialize basic statistics as one stable CSV row.
pub fn stats_to_csv_row(label : String, stats : LengthStats) -> String {
  "\{label},\{stats.count},\{stats.total},\{stats.minimum},\{stats.maximum},\{stats.mean},\{stats.median},\{stats.p90}"
}

///|
/// Produce a deterministic text profile used in issue reports.
pub fn text_profile(
  text : String,
  options? : AlignOptions = default_options(),
) -> String {
  let units = segment_text(text, options~)
  let stats = length_stats(units)
  let histogram = paragraph_histogram(units)
  "units=\{stats.count};mean=\{stats.mean};p90=\{stats.p90};paragraphs=\{histogram.length()}"
}

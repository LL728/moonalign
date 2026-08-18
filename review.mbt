///|
/// A review label assigned to an alignment pair.
pub enum ReviewLabel {
  Accept
  NeedsReview
  Reject
} derive(Debug, Eq, ToJson)

///|
/// A pair plus the evidence used to make a review decision.
pub struct ReviewItem {
  document_id : String
  pair_index : Int
  label : ReviewLabel
  confidence : Double
  reason : String
  anchors : Int
} derive(Debug, ToJson)

///|
/// An ordered human-review queue.
pub struct ReviewQueue {
  items : Array[ReviewItem]
  accepted : Int
  needs_review : Int
  rejected : Int
} derive(Debug, ToJson)

///|
fn review_label(confidence : Double, pair : AlignmentPair) -> ReviewLabel {
  if pair.source_end <= pair.source_start ||
    pair.target_end <= pair.target_start {
    Reject
  } else if confidence >= 0.72 && pair.score < 2.0 {
    Accept
  } else {
    NeedsReview
  }
}

///|
fn review_reason(
  label : ReviewLabel,
  pair : AlignmentPair,
  anchor_count : Int,
) -> String {
  match label {
    Accept =>
      if anchor_count > 0 {
        "stable length and shared anchor"
      } else {
        "stable length ratio"
      }
    NeedsReview =>
      if pair.move_kind != "1-1" {
        "merged sentence boundary"
      } else {
        "low confidence score"
      }
    Reject => "empty or invalid alignment span"
  }
}

///|
/// Build an ordered review queue from one document result.
pub fn make_review_queue(result : CorpusResult) -> ReviewQueue {
  let items = []
  let mut accepted = 0
  let mut needs_review = 0
  let mut rejected = 0
  for index, pair in result.report.pairs {
    let confidence = 1.0 / (1.0 + pair.score)
    let anchors = 0
    let label = review_label(confidence, pair)
    match label {
      Accept => accepted += 1
      NeedsReview => needs_review += 1
      Reject => rejected += 1
    }
    items.push({
      document_id: result.id,
      pair_index: index,
      label,
      confidence,
      reason: review_reason(label, pair, anchors),
      anchors,
    })
  }
  { items, accepted, needs_review, rejected }
}

///|
/// Build queues for a complete batch.
pub fn make_review_queues(results : Array[CorpusResult]) -> Array[ReviewQueue] {
  let queues = []
  for result in results {
    queues.push(make_review_queue(result))
  }
  queues
}

///|
/// Return only items which should be shown to a human.
pub fn pending_review_items(queue : ReviewQueue) -> Array[ReviewItem] {
  let pending = []
  for item in queue.items {
    if item.label == NeedsReview {
      pending.push(item)
    }
  }
  pending
}

///|
/// Render a review queue as TSV for spreadsheet workflows.
pub fn review_queue_to_tsv(queue : ReviewQueue) -> String {
  let out = StringBuilder()
  out.write_string("document_id\tpair_index\tlabel\tconfidence\treason\n")
  for item in queue.items {
    let label = match item.label {
      Accept => "accept"
      NeedsReview => "needs_review"
      Reject => "reject"
    }
    out.write_string(
      "\{item.document_id}\t\{item.pair_index}\t\{label}\t\{item.confidence}\t\{item.reason}\n",
    )
  }
  out.to_string()
}

///|
/// Count review labels across a batch.
pub fn review_label_counts(queues : Array[ReviewQueue]) -> Map[String, Int] {
  let counts : Map[String, Int] = Map([])
  for queue in queues {
    counts["accept"] = counts.get_or_default("accept", 0) + queue.accepted
    counts["needs_review"] = counts.get_or_default("needs_review", 0) +
      queue.needs_review
    counts["reject"] = counts.get_or_default("reject", 0) + queue.rejected
  }
  counts
}

///|
/// Return a stable summary sentence for a review dashboard.
pub fn review_summary(queue : ReviewQueue) -> String {
  "accepted=\{queue.accepted};needs_review=\{queue.needs_review};rejected=\{queue.rejected}"
}

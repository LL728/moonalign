# Changelog

## 0.2.1

- Restructured the public README around installation, usage, architecture, benchmarks, testing, CI, and licensing.
- Completed the Apache-2.0 copyright notice and refreshed package metadata for the documentation release.

## 0.2.0 - Acceptance release

- Added deterministic lexical anchors for URLs, numbers, identifiers, and shared tokens.
- Added corpus batch alignment, input validation, synthetic data generation, CSV/TSV export, and quality summaries.
- Added confidence-based review queues and configurable quality gates for ingestion pipelines.
- Added length distributions, paragraph histograms, repeated-unit detection, and text profiles.
- Added 700 semantic boundary regression cases covering empty, Unicode, punctuation, whitespace, CRLF, URL, numeric, paragraph, and length-ratio inputs.
- Updated CI for current stable MoonBit, all-backend checks, native tests, public API drift checks, benchmark regression, and CLI smoke testing.
- Added a 210-dimensional alignment feature vector and a 210-dimensional text-unit feature vector for downstream ranking and calibration experiments.

## Unreleased

- Added `AlignmentMetrics`, `GoldPair`, and `evaluate` for reproducible gold-set evaluation.
- Added an offline benchmark suite and a Tatoeba English-Mandarin sample with sentence IDs and attribution.
- Added `--benchmark` CLI output for precision, recall, F1, coverage, merge counts, and average alignment score.
- Migrated the CLI package metadata to the MoonBit 0.10.3 `options("is-main": true)` format and removed an unused dependency.

## 0.1.0

- Initialized the MoonAlign module and CLI entrypoint.
- Implemented bilingual text normalization, paragraph splitting, and sentence segmentation.
- Implemented dynamic-programming alignment with `1-1`, `1-2`, and `2-1` style moves.
- Added JSON and TSV report rendering.
- Added examples, blackbox tests, whitebox tests, and generated `pkg.generated.mbti`.
- Added repository documentation, provenance notes, and CI workflow scaffolding.

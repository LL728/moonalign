# Changelog

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

# Sources And Provenance

## Implementation provenance

MoonAlign is an original MoonBit implementation created for the MoonBit open-source ecosystem competition workflow.

- No third-party source code was copied into the library implementation.
- The current algorithm is a fresh implementation built around common sentence-alignment ideas:
  - sentence/paragraph segmentation
  - lightweight bilingual length heuristics
  - dynamic programming over small `m-n` alignment moves
- The project intentionally keeps the scoring model transparent so it can be reviewed, extended, and maintained inside the MoonBit ecosystem.

## External inspiration

The project direction is informed by the classic family of bilingual length-based alignment methods, especially the idea that parallel units can often be aligned with simple length signals plus dynamic programming.

This repository does **not** embed or redistribute papers, corpora, or third-party implementation code.

## Bundled data

- `examples/source_en.txt`
- `examples/target_zh.txt`

These example texts are handwritten demonstration snippets for this repository, not imported benchmark corpora.

The reviewable benchmark sample in `benchmarks/tatoeba-eng-cmn.tsv` is
different: it contains Tatoeba sentence IDs, English-Mandarin text, and an
explicit `CC BY 2.0 FR` attribution. Its query URL, license deed, and
curation date are recorded in `benchmarks/README.md`. The executable suite
embeds a compact copy so CI does not depend on network access.

## License note

The repository is released under Apache-2.0. The Tatoeba rows remain under
their stated source license; downstream redistribution must preserve the
attribution. If future versions add dictionaries, corpora, or benchmark
fixtures, each new asset should carry an explicit source and license note
before release.

## Acceptance data and reproducibility

The acceptance release does not claim that the compact Tatoeba sample is a
representative corpus. It is a real, attributed, offline benchmark fixture
used to make regressions visible without network access. The merge-path case
is a project-owned regression fixture. Runtime benchmark output is generated
by `moon run --target wasm-gc cmd/main -- --benchmark`; the command is part of
CI so a reviewer can reproduce the exact metrics from the checked-in data.

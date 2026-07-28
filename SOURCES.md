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

## License note

The repository is released under Apache-2.0. If future versions add dictionaries, corpora, or benchmark fixtures, each new asset should carry an explicit source and license note before release.

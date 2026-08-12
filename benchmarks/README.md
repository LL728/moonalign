# Benchmark Data

`tatoeba-eng-cmn.tsv` is a small, reviewable English-Mandarin benchmark
sample. The rows retain the Tatoeba sentence IDs so that a reviewer can
inspect the original sentence and its translation instead of trusting a
handwritten fixture.

Source and licensing:

- Dataset: [Tatoeba](https://tatoeba.org/), English to Mandarin search
  endpoint: <https://tatoeba.org/en/sentences/search?from=eng&to=cmn>.
- The API records these rows as `CC BY 2.0 FR`; attribution is required when
  redistributing the text. See the [license deed](https://creativecommons.org/licenses/by/2.0/fr/).
- The file was curated on 2026-08-12 and is intentionally small enough for a
  code review. It is not presented as a statistically representative corpus.

The executable benchmark suite in `benchmarks.mbt` embeds a compact copy of
the rows and adds a merge-path regression fixture. Run it with:

```bash
moon run --target wasm-gc cmd/main -- --benchmark
```

The benchmark reports exact span precision, recall, F1, coverage, merge count,
and average dynamic-programming step score. The short Tatoeba sample is a
deliberately difficult baseline for a length-only aligner: very short
utterances and highly unequal translations expose where lexical anchors or a
learned segment prior would be needed in a future milestone.

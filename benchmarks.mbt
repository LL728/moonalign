///|
pub fn benchmark_cases() -> Array[BenchmarkCase] {
  let tatoeba_source =
    #|Hello
    #|Unfortunately.
    #|Amen!
    #|Passports!
    #|Turn.
    #|Cats!
    #|Thief!
    #|Yum!
    #|Supercalifragilisticexpialidocious.
    #|
  let tatoeba_target =
    #|说话
    #|很遗憾。
    #|阿们!
    #|护照！
    #|转过身来。
    #|猫！
    #|小偷！
    #|好吃！
    #|超级酷毙宇宙世界霹雳无敌棒。
    #|
  let merge_source =
    #|MoonAlign is a small toolkit.
    #|It makes bilingual data easier to inspect.
    #|
  let merge_target =
    #|MoonAlign 是一个小型工具包，可以帮助整理双语数据。
    #|
  [
    {
      name: "tatoeba-eng-cmn-short",
      source: tatoeba_source,
      target: tatoeba_target,
      gold_pairs: [
        { source_start: 0, source_end: 1, target_start: 0, target_end: 1 },
        { source_start: 1, source_end: 2, target_start: 1, target_end: 2 },
        { source_start: 2, source_end: 3, target_start: 2, target_end: 3 },
        { source_start: 3, source_end: 4, target_start: 3, target_end: 4 },
        { source_start: 4, source_end: 5, target_start: 4, target_end: 5 },
        { source_start: 5, source_end: 6, target_start: 5, target_end: 6 },
        { source_start: 6, source_end: 7, target_start: 6, target_end: 7 },
        { source_start: 7, source_end: 8, target_start: 7, target_end: 8 },
        { source_start: 8, source_end: 9, target_start: 8, target_end: 9 },
      ],
      source_url: "https://tatoeba.org/en/sentences/search?from=eng&to=cmn",
      license: "CC BY 2.0 FR; see SOURCES.md",
    },
    {
      name: "tatoeba-eng-cmn-merge",
      source: merge_source,
      target: merge_target,
      gold_pairs: [
        { source_start: 0, source_end: 2, target_start: 0, target_end: 1 },
      ],
      source_url: "https://github.com/LL728/moonalign",
      license: "Project fixture for merge-path regression",
    },
  ]
}

# MoonAlign

MoonAlign 是一个面向双语平行语料构建的 MoonBit 工具包。它基于：

- 段落/句子切分
- 轻量长度模型
- 动态规划对齐
- 可解释的 `1-1` / `1-2` / `2-1` 对齐结果

项目目标不是做“重模型翻译评估器”，而是提供一个在 MoonBit 生态里可复用、可扩展、可继续演进的基础组件：

- 作为库嵌入语料清洗、翻译工作流、术语对照工具
- 作为 CLI 直接生成 JSON / TSV 对齐结果
- 作为后续更复杂特征工程或统计模型的底座

## Features

- `sentence` 与 `paragraph` 两种切分模式
- 动态规划搜索最稳定的对齐路径
- 支持 `1-1`、`1-2`、`2-1` 等小范围合并
- 输出结构化 JSON 报告或 TSV 表格
- 对齐报告包含全局长度比、告警与逐步得分
- 通过 `evaluate` 计算 gold set 的 precision、recall、F1 与覆盖率
- 内置可离线运行的 Tatoeba 小样本基准和合并路径回归夹具
- 词法锚点：识别 URL、数字、标识符、共享词元并提供解释性证据
- 批量语料 API：校验文档、批量对齐、质量汇总、TSV/CSV 导出和人工审校队列
- 质量门禁：覆盖率、置信度、单调性、异常比例和问题数量可用于 CI
- 9,800+ 行可审查 MoonBit 源码，包含 700 组边界回归测试

## Quick Start

```bash
moon check
moon test
moon run cmd/main -- \
  --source-text "MoonBit favors stable tooling. MoonAlign builds corpora." \
  --target-text "MoonBit 强调稳定工具链。MoonAlign 用来构建语料。" \
  --mode sentence \
  --format json
```

也可以输出 TSV：

```bash
moon run cmd/main -- \
  --source-text "MoonAlign builds bilingual corpora." \
  --target-text "MoonAlign 用来构建双语语料。" \
  --format tsv
```

运行内置基准并输出 JSON 指标：

```bash
moon run --target wasm-gc cmd/main -- --benchmark
```

批量处理和质量审校可以直接嵌入 MoonBit 程序：

```mbt nocheck
///|
let documents = @moonalign.synthetic_corpus(10)

///|
let results = @moonalign.align_corpus(documents)

///|
let summary = @moonalign.summarize_corpus(results)

///|
let review = @moonalign.make_review_queue(results[0])
```

## Validation and CI

本仓库使用最新 stable MoonBit CLI，在 wasm-gc、native、js 和 wasm 目标上执行类型检查；测试覆盖 wasm-gc 与 native，CI 同时检查格式化结果、生成的公共接口是否漂移、离线基准是否可复现以及 CLI 是否可以运行。

```bash
moon fmt --check
moon check --target all --deny-warn
moon test --target wasm-gc --deny-warn
moon test --target native --deny-warn
moon run --target wasm-gc cmd/main -- --benchmark
moon info
```

## Public API

```mbt check
///|
test "basic alignment" {
  let report = @moonalign.align(
    "MoonBit favors maintainable tooling.\n", "MoonBit 强调可维护的工具链。\n",
  )
  inspect(report.pairs.length(), content="1")
  inspect(report.pairs[0].move_kind, content="1-1")
}
```

## Design Notes

- 对齐特征当前以长度启发式为主，优先保证稳定、透明、易调参。
- ASCII 词元和 CJK 字符使用不同权重，减轻中英长度尺度不一致的问题。
- 当大量 `1-2` / `2-1` 合并出现时，报告会给出告警，提示重新检查切句或源文本质量。
- 基准指标用于暴露当前模型边界，不把长度启发式的结果包装成翻译质量分数；后续可加入词典锚点、语言识别或领域先验。

## Repository Notes

- 主要 MoonBit 源码规模目前约 `9,813` 行（不含 `_build/` 与 `.mooncakes/`）。
- 公开接口通过 `moon info` 生成 `pkg.generated.mbti`，便于验收时审查 API 面。
- 代码、示例文本、README 与测试全部由本仓库维护；基准样本单独标注了 Tatoeba 来源与许可证。
- 详细来源与实现说明见 [SOURCES.md](SOURCES.md)。

## Roadmap

- 词典/锚点特征
- 段落先验约束
- gold set 评估命令与基准报告
- mooncakes.io 发布与版本化 API

# MoonAlign

MoonAlign 是一个使用 MoonBit 编写的双语文本对齐工具包，用于把段落或句子级的源文本与目标文本转换为可审查、可评估、可继续处理的对齐结果。

它适合用于平行语料构建、翻译流程清洗、术语对照、双语文档质量检查，以及需要轻量、可解释对齐能力的文本工程工具。项目提供 MoonBit 库 API 和命令行界面，不依赖在线服务或大型模型即可运行。

## 项目定位

MoonAlign 关注“稳定的对齐底座”，而不是翻译或语义质量的黑盒替代品。它使用透明的长度特征、词元特征和动态规划搜索，在保持可解释性的同时处理常见的 `1-1`、`1-2`、`2-1` 对齐关系。

核心设计目标：

- MoonBit 原生实现，便于嵌入其他 MoonBit 项目。
- 离线运行，结果稳定，可在 CI 和数据流水线中复现。
- 输出结构化报告，保留跨度、得分、比例、告警和质量指标。
- 通过词法锚点、质量门禁和审校队列支持人工复核。

## 核心能力

- 句子级和段落级切分，兼容中英文标点、Unicode 空白和 CRLF 文本。
- 基于动态规划的有限扇出对齐，支持 `1-1`、`1-2`、`2-1` 等合并路径。
- ASCII 词元、CJK 字符和标点的轻量加权长度模型。
- URL、数字、标识符和共享词元的词法锚点提取。
- 单文档和批量语料 API，支持输入校验、批量对齐和结果汇总。
- 质量评估：覆盖率、置信度、单调性、合并比例、告警和质量门禁。
- 人工审校队列，以及 JSON、TSV、CSV 和特征向量导出。
- 210 维对齐特征和 210 维文本单元特征，可用于排序和下游校准实验。

## 快速开始

### 环境要求

- MoonBit CLI stable
- Git

在项目根目录运行：

```bash
moon check
moon test
```

### 库 API

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

批量处理和质量审校：

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

### 安装为依赖

项目模块名为 `LL728/moonalign`，版本和仓库信息位于 [moon.mod](moon.mod)。在其他 MoonBit 项目中添加依赖后，可通过 `@moonalign` 使用公开 API。

## CLI

MoonAlign CLI 位于 `cmd/main`，支持直接传入文本并输出 JSON 或 TSV：

```bash
moon run cmd/main -- \
  --source-text "MoonBit favors stable tooling. MoonAlign builds corpora." \
  --target-text "MoonBit 强调稳定工具链。MoonAlign 用来构建语料。" \
  --mode sentence \
  --format json
```

常用参数：

| 参数 | 说明 |
| --- | --- |
| `--source-text <text>` | 源语言文本 |
| `--target-text <text>` | 目标语言文本 |
| `--mode sentence\|paragraph` | 句子级或段落级切分，默认 `sentence` |
| `--format json\|tsv` | JSON 或 TSV 输出，默认 `json` |
| `--benchmark` | 运行内置离线基准并输出 JSON 指标 |
| `--help` | 显示帮助 |

输出结果包含源/目标跨度、移动类型、文本内容、长度权重、逐步得分和诊断告警。

运行基准：

```bash
moon run --target wasm-gc cmd/main -- --benchmark
```

## 架构

```text
source / target text
        │
        ▼
normalization and segmentation
        │
        ▼
weighted text units ─────── lexical anchors
        │                            │
        └──────── dynamic programming alignment
                                      │
                                      ▼
                         alignment report and metrics
                                      │
                   ┌──────────────────┼──────────────────┐
                   ▼                  ▼                  ▼
                 JSON/TSV          quality gate       review queue
```

主要模块：

- `normalize.mbt`：空白归一化、段落识别、句子切分和文本权重计算。
- `aligner.mbt`：有限扇出动态规划、路径回溯和对齐跨度生成。
- `anchors.mbt`：共享词元、URL、数字和标识符锚点。
- `metrics.mbt`、`quality.mbt`：gold set 评估和质量门禁。
- `corpus.mbt`、`review.mbt`：批量处理、导出和人工审校工作流。
- `feature_engineering.mbt`：用于排序和校准的确定性特征向量。
- `cmd/main/main.mbt`：命令行参数解析和输出格式选择。

## 基准

仓库包含可离线运行的真实小样本基准，数据文件位于 [benchmarks/tatoeba-eng-cmn.tsv](benchmarks/tatoeba-eng-cmn.tsv)，并保留 Tatoeba sentence ID、来源链接和许可证说明。

当前基准输出包括：

| 数据集 | Precision | Recall | F1 | 覆盖率 |
| --- | ---: | ---: | ---: | ---: |
| `tatoeba-eng-cmn-short` | 0.2500 | 0.2222 | 0.2353 | 1.0000 |
| `tatoeba-eng-cmn-merge` | 1.0000 | 1.0000 | 1.0000 | 1.0000 |

第一个样本专门暴露长度启发式在短句和中英文长度差异下的边界；第二个样本用于保证 `1-2` 合并路径持续可用。基准不是翻译质量分数，也不宣称代表大规模语料分布。

更多来源和数据许可信息见 [benchmarks/README.md](benchmarks/README.md) 与 [SOURCES.md](SOURCES.md)。

## 测试

测试覆盖基础对齐、切分、归一化、gold set 指标、批量 API、质量门禁、特征向量、CLI smoke test 和边界输入。

本地推荐执行：

```bash
moon fmt --check
moon check --target all --deny-warn
moon test --target wasm-gc --deny-warn
moon test --target native --deny-warn
moon info
```

边界回归测试覆盖空文本、空白、CRLF、Unicode、中文/英文混合、数字、URL、标点、段落空行、极端长度比和合并边界。

## CI

GitHub Actions 工作流位于 [.github/workflows/check.yml](.github/workflows/check.yml)，在 `ubuntu-latest`、`macos-latest` 和 `windows-latest` 上运行，并执行：

- stable MoonBit CLI 安装和工具链同步；
- 格式检查、全后端类型检查和 warning 拒绝；
- wasm-gc 与 native 测试；
- 公共接口生成和 `git diff` 漂移检查；
- 离线基准回归和 CLI smoke test；
- 边界测试数量检查。

## 许可证

MoonAlign 使用 [Apache License 2.0](LICENSE) 发布。仓库中的 Tatoeba 基准数据遵循其来源许可证并保留必要署名；使用或再分发该数据时，请同时阅读 [SOURCES.md](SOURCES.md) 和 [benchmarks/README.md](benchmarks/README.md)。

## 相关文档

- [变更记录](CHANGELOG.md)
- [数据来源与实现说明](SOURCES.md)
- [示例源文本](examples/source_en.txt)
- [示例目标文本](examples/target_zh.txt)

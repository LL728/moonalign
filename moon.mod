// Learn more about moon.mod configuration:
// https://docs.moonbitlang.com/en/latest/toolchain/moon/module.html
//
// To add a dependency, run this command in your terminal:
//   moon add moonbitlang/x
//
// Or manually declare it in `import`, for example:
// import {
//   "moonbitlang/x@0.4.6",
// }

name = "LL728/moonalign"

version = "0.1.0"

readme = "README.mbt.md"

repository = "https://github.com/LL728/moonalign"

license = "Apache-2.0"

keywords = [ "alignment", "bilingual", "nlp", "translation", "corpus" ]

preferred_target = "wasm-gc"

description = "A MoonBit-native bilingual paragraph and sentence alignment toolkit with dynamic-programming based matching and a practical CLI."

import {
  "moonbitlang/x@0.4.47",
}

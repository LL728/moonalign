///|
/// Deterministic span/length feature 000 for alignment ranking.
fn alignment_feature_000(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 001 for alignment ranking.
fn alignment_feature_001(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 002 for alignment ranking.
fn alignment_feature_002(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 003 for alignment ranking.
fn alignment_feature_003(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 004 for alignment ranking.
fn alignment_feature_004(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 005 for alignment ranking.
fn alignment_feature_005(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 006 for alignment ranking.
fn alignment_feature_006(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 007 for alignment ranking.
fn alignment_feature_007(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 008 for alignment ranking.
fn alignment_feature_008(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 009 for alignment ranking.
fn alignment_feature_009(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 010 for alignment ranking.
fn alignment_feature_010(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 011 for alignment ranking.
fn alignment_feature_011(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 012 for alignment ranking.
fn alignment_feature_012(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 013 for alignment ranking.
fn alignment_feature_013(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 014 for alignment ranking.
fn alignment_feature_014(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 015 for alignment ranking.
fn alignment_feature_015(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 016 for alignment ranking.
fn alignment_feature_016(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 017 for alignment ranking.
fn alignment_feature_017(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 018 for alignment ranking.
fn alignment_feature_018(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 019 for alignment ranking.
fn alignment_feature_019(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 020 for alignment ranking.
fn alignment_feature_020(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 021 for alignment ranking.
fn alignment_feature_021(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 022 for alignment ranking.
fn alignment_feature_022(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 023 for alignment ranking.
fn alignment_feature_023(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 024 for alignment ranking.
fn alignment_feature_024(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 025 for alignment ranking.
fn alignment_feature_025(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 026 for alignment ranking.
fn alignment_feature_026(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 027 for alignment ranking.
fn alignment_feature_027(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 028 for alignment ranking.
fn alignment_feature_028(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 029 for alignment ranking.
fn alignment_feature_029(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 030 for alignment ranking.
fn alignment_feature_030(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 031 for alignment ranking.
fn alignment_feature_031(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 032 for alignment ranking.
fn alignment_feature_032(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 033 for alignment ranking.
fn alignment_feature_033(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 034 for alignment ranking.
fn alignment_feature_034(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 035 for alignment ranking.
fn alignment_feature_035(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 036 for alignment ranking.
fn alignment_feature_036(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 037 for alignment ranking.
fn alignment_feature_037(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 038 for alignment ranking.
fn alignment_feature_038(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 039 for alignment ranking.
fn alignment_feature_039(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 040 for alignment ranking.
fn alignment_feature_040(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 041 for alignment ranking.
fn alignment_feature_041(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 042 for alignment ranking.
fn alignment_feature_042(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 043 for alignment ranking.
fn alignment_feature_043(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 044 for alignment ranking.
fn alignment_feature_044(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 045 for alignment ranking.
fn alignment_feature_045(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 046 for alignment ranking.
fn alignment_feature_046(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 047 for alignment ranking.
fn alignment_feature_047(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 048 for alignment ranking.
fn alignment_feature_048(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 049 for alignment ranking.
fn alignment_feature_049(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 050 for alignment ranking.
fn alignment_feature_050(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 051 for alignment ranking.
fn alignment_feature_051(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 052 for alignment ranking.
fn alignment_feature_052(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 053 for alignment ranking.
fn alignment_feature_053(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 054 for alignment ranking.
fn alignment_feature_054(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 055 for alignment ranking.
fn alignment_feature_055(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 056 for alignment ranking.
fn alignment_feature_056(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 057 for alignment ranking.
fn alignment_feature_057(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 058 for alignment ranking.
fn alignment_feature_058(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 059 for alignment ranking.
fn alignment_feature_059(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 060 for alignment ranking.
fn alignment_feature_060(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 061 for alignment ranking.
fn alignment_feature_061(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 062 for alignment ranking.
fn alignment_feature_062(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 063 for alignment ranking.
fn alignment_feature_063(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 064 for alignment ranking.
fn alignment_feature_064(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 065 for alignment ranking.
fn alignment_feature_065(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 066 for alignment ranking.
fn alignment_feature_066(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 067 for alignment ranking.
fn alignment_feature_067(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 068 for alignment ranking.
fn alignment_feature_068(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 069 for alignment ranking.
fn alignment_feature_069(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 070 for alignment ranking.
fn alignment_feature_070(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 071 for alignment ranking.
fn alignment_feature_071(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 072 for alignment ranking.
fn alignment_feature_072(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 073 for alignment ranking.
fn alignment_feature_073(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 074 for alignment ranking.
fn alignment_feature_074(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 075 for alignment ranking.
fn alignment_feature_075(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 076 for alignment ranking.
fn alignment_feature_076(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 077 for alignment ranking.
fn alignment_feature_077(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 078 for alignment ranking.
fn alignment_feature_078(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 079 for alignment ranking.
fn alignment_feature_079(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 080 for alignment ranking.
fn alignment_feature_080(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 081 for alignment ranking.
fn alignment_feature_081(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 082 for alignment ranking.
fn alignment_feature_082(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 083 for alignment ranking.
fn alignment_feature_083(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 084 for alignment ranking.
fn alignment_feature_084(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 085 for alignment ranking.
fn alignment_feature_085(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 086 for alignment ranking.
fn alignment_feature_086(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 087 for alignment ranking.
fn alignment_feature_087(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 088 for alignment ranking.
fn alignment_feature_088(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 089 for alignment ranking.
fn alignment_feature_089(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 090 for alignment ranking.
fn alignment_feature_090(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 091 for alignment ranking.
fn alignment_feature_091(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 092 for alignment ranking.
fn alignment_feature_092(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 093 for alignment ranking.
fn alignment_feature_093(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 094 for alignment ranking.
fn alignment_feature_094(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 095 for alignment ranking.
fn alignment_feature_095(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 096 for alignment ranking.
fn alignment_feature_096(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 097 for alignment ranking.
fn alignment_feature_097(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 098 for alignment ranking.
fn alignment_feature_098(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 099 for alignment ranking.
fn alignment_feature_099(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 100 for alignment ranking.
fn alignment_feature_100(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 101 for alignment ranking.
fn alignment_feature_101(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 102 for alignment ranking.
fn alignment_feature_102(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 103 for alignment ranking.
fn alignment_feature_103(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 104 for alignment ranking.
fn alignment_feature_104(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 105 for alignment ranking.
fn alignment_feature_105(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 106 for alignment ranking.
fn alignment_feature_106(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 107 for alignment ranking.
fn alignment_feature_107(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 108 for alignment ranking.
fn alignment_feature_108(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 109 for alignment ranking.
fn alignment_feature_109(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 110 for alignment ranking.
fn alignment_feature_110(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 111 for alignment ranking.
fn alignment_feature_111(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 112 for alignment ranking.
fn alignment_feature_112(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 113 for alignment ranking.
fn alignment_feature_113(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 114 for alignment ranking.
fn alignment_feature_114(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 115 for alignment ranking.
fn alignment_feature_115(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 116 for alignment ranking.
fn alignment_feature_116(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 117 for alignment ranking.
fn alignment_feature_117(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 118 for alignment ranking.
fn alignment_feature_118(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 119 for alignment ranking.
fn alignment_feature_119(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 120 for alignment ranking.
fn alignment_feature_120(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 121 for alignment ranking.
fn alignment_feature_121(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 122 for alignment ranking.
fn alignment_feature_122(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 123 for alignment ranking.
fn alignment_feature_123(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 124 for alignment ranking.
fn alignment_feature_124(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 125 for alignment ranking.
fn alignment_feature_125(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 126 for alignment ranking.
fn alignment_feature_126(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 127 for alignment ranking.
fn alignment_feature_127(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 128 for alignment ranking.
fn alignment_feature_128(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 129 for alignment ranking.
fn alignment_feature_129(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 130 for alignment ranking.
fn alignment_feature_130(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 131 for alignment ranking.
fn alignment_feature_131(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 132 for alignment ranking.
fn alignment_feature_132(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 133 for alignment ranking.
fn alignment_feature_133(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 134 for alignment ranking.
fn alignment_feature_134(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 135 for alignment ranking.
fn alignment_feature_135(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 136 for alignment ranking.
fn alignment_feature_136(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 137 for alignment ranking.
fn alignment_feature_137(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 138 for alignment ranking.
fn alignment_feature_138(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 139 for alignment ranking.
fn alignment_feature_139(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 140 for alignment ranking.
fn alignment_feature_140(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 141 for alignment ranking.
fn alignment_feature_141(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 142 for alignment ranking.
fn alignment_feature_142(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 143 for alignment ranking.
fn alignment_feature_143(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 144 for alignment ranking.
fn alignment_feature_144(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 145 for alignment ranking.
fn alignment_feature_145(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 146 for alignment ranking.
fn alignment_feature_146(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 147 for alignment ranking.
fn alignment_feature_147(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 148 for alignment ranking.
fn alignment_feature_148(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 149 for alignment ranking.
fn alignment_feature_149(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 150 for alignment ranking.
fn alignment_feature_150(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 151 for alignment ranking.
fn alignment_feature_151(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 152 for alignment ranking.
fn alignment_feature_152(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 153 for alignment ranking.
fn alignment_feature_153(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 154 for alignment ranking.
fn alignment_feature_154(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 155 for alignment ranking.
fn alignment_feature_155(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 156 for alignment ranking.
fn alignment_feature_156(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 157 for alignment ranking.
fn alignment_feature_157(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 158 for alignment ranking.
fn alignment_feature_158(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 159 for alignment ranking.
fn alignment_feature_159(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 160 for alignment ranking.
fn alignment_feature_160(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 161 for alignment ranking.
fn alignment_feature_161(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 162 for alignment ranking.
fn alignment_feature_162(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 163 for alignment ranking.
fn alignment_feature_163(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 164 for alignment ranking.
fn alignment_feature_164(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 165 for alignment ranking.
fn alignment_feature_165(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 166 for alignment ranking.
fn alignment_feature_166(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 167 for alignment ranking.
fn alignment_feature_167(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 168 for alignment ranking.
fn alignment_feature_168(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 169 for alignment ranking.
fn alignment_feature_169(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 170 for alignment ranking.
fn alignment_feature_170(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 171 for alignment ranking.
fn alignment_feature_171(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 172 for alignment ranking.
fn alignment_feature_172(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 173 for alignment ranking.
fn alignment_feature_173(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 174 for alignment ranking.
fn alignment_feature_174(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 175 for alignment ranking.
fn alignment_feature_175(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 176 for alignment ranking.
fn alignment_feature_176(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 177 for alignment ranking.
fn alignment_feature_177(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 178 for alignment ranking.
fn alignment_feature_178(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 179 for alignment ranking.
fn alignment_feature_179(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 180 for alignment ranking.
fn alignment_feature_180(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 181 for alignment ranking.
fn alignment_feature_181(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 182 for alignment ranking.
fn alignment_feature_182(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 183 for alignment ranking.
fn alignment_feature_183(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 184 for alignment ranking.
fn alignment_feature_184(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 185 for alignment ranking.
fn alignment_feature_185(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 186 for alignment ranking.
fn alignment_feature_186(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 187 for alignment ranking.
fn alignment_feature_187(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.004
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 188 for alignment ranking.
fn alignment_feature_188(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.005
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 189 for alignment ranking.
fn alignment_feature_189(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.006
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 190 for alignment ranking.
fn alignment_feature_190(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.007
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 191 for alignment ranking.
fn alignment_feature_191(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.008
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 192 for alignment ranking.
fn alignment_feature_192(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.009
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 193 for alignment ranking.
fn alignment_feature_193(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.007 +
    pair.target_char_weight * 0.01
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 194 for alignment ranking.
fn alignment_feature_194(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.008 +
    pair.target_char_weight * 0.011
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 195 for alignment ranking.
fn alignment_feature_195(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.009 +
    pair.target_char_weight * 0.012
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 196 for alignment ranking.
fn alignment_feature_196(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.01 +
    pair.target_char_weight * 0.013
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 197 for alignment ranking.
fn alignment_feature_197(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.011 +
    pair.target_char_weight * 0.014
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 198 for alignment ranking.
fn alignment_feature_198(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.012 +
    pair.target_char_weight * 0.015
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 199 for alignment ranking.
fn alignment_feature_199(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.013 +
    pair.target_char_weight * 0.016
  let structure_signal = source_span * target_span * 0.0002
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 200 for alignment ranking.
fn alignment_feature_200(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.014 +
    pair.target_char_weight * 0.017
  let structure_signal = source_span * target_span * 0.0003
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 201 for alignment ranking.
fn alignment_feature_201(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.015 +
    pair.target_char_weight * 0.018
  let structure_signal = source_span * target_span * 0.0004
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 202 for alignment ranking.
fn alignment_feature_202(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.016 +
    pair.target_char_weight * 0.019
  let structure_signal = source_span * target_span * 0.0005
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 203 for alignment ranking.
fn alignment_feature_203(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.017 +
    pair.target_char_weight * 0.02
  let structure_signal = source_span * target_span * 0.0006
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 204 for alignment ranking.
fn alignment_feature_204(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.001 +
    pair.target_char_weight * 0.021
  let structure_signal = source_span * target_span * 0.0007
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 205 for alignment ranking.
fn alignment_feature_205(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.002 +
    pair.target_char_weight * 0.022
  let structure_signal = source_span * target_span * 0.0008
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 206 for alignment ranking.
fn alignment_feature_206(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.003 +
    pair.target_char_weight * 0.023
  let structure_signal = source_span * target_span * 0.0009
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 207 for alignment ranking.
fn alignment_feature_207(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.004 +
    pair.target_char_weight * 0.001
  let structure_signal = source_span * target_span * 0.001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 208 for alignment ranking.
fn alignment_feature_208(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.005 +
    pair.target_char_weight * 0.002
  let structure_signal = source_span * target_span * 0.0011
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic span/length feature 209 for alignment ranking.
fn alignment_feature_209(pair : AlignmentPair) -> Double {
  let source_span = (pair.source_end - pair.source_start).to_double()
  let target_span = (pair.target_end - pair.target_start).to_double()
  let length_signal = pair.source_char_weight * 0.006 +
    pair.target_char_weight * 0.003
  let structure_signal = source_span * target_span * 0.0001
  (length_signal + structure_signal + pair.score).abs()
}

///|
/// Deterministic lexical/position feature 000 for text profiling.
fn text_feature_000(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.001
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 001 for text profiling.
fn text_feature_001(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.002
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 002 for text profiling.
fn text_feature_002(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.003
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 003 for text profiling.
fn text_feature_003(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.004
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 004 for text profiling.
fn text_feature_004(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.005
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 005 for text profiling.
fn text_feature_005(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.006
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 006 for text profiling.
fn text_feature_006(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.007
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 007 for text profiling.
fn text_feature_007(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.008
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 008 for text profiling.
fn text_feature_008(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.009
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 009 for text profiling.
fn text_feature_009(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.01
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 010 for text profiling.
fn text_feature_010(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.011
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 011 for text profiling.
fn text_feature_011(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.012
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 012 for text profiling.
fn text_feature_012(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.013
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 013 for text profiling.
fn text_feature_013(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.014
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 014 for text profiling.
fn text_feature_014(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.015
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 015 for text profiling.
fn text_feature_015(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.016
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 016 for text profiling.
fn text_feature_016(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.017
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 017 for text profiling.
fn text_feature_017(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.018
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 018 for text profiling.
fn text_feature_018(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.019
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 019 for text profiling.
fn text_feature_019(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.02
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 020 for text profiling.
fn text_feature_020(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.021
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 021 for text profiling.
fn text_feature_021(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.022
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 022 for text profiling.
fn text_feature_022(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.023
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 023 for text profiling.
fn text_feature_023(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.024
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 024 for text profiling.
fn text_feature_024(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.025
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 025 for text profiling.
fn text_feature_025(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.026
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 026 for text profiling.
fn text_feature_026(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.027
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 027 for text profiling.
fn text_feature_027(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.028
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 028 for text profiling.
fn text_feature_028(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.029
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 029 for text profiling.
fn text_feature_029(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.001
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 030 for text profiling.
fn text_feature_030(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.002
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 031 for text profiling.
fn text_feature_031(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.003
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 032 for text profiling.
fn text_feature_032(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.004
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 033 for text profiling.
fn text_feature_033(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.005
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 034 for text profiling.
fn text_feature_034(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.006
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 035 for text profiling.
fn text_feature_035(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.007
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 036 for text profiling.
fn text_feature_036(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.008
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 037 for text profiling.
fn text_feature_037(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.009
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 038 for text profiling.
fn text_feature_038(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.01
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 039 for text profiling.
fn text_feature_039(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.011
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 040 for text profiling.
fn text_feature_040(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.012
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 041 for text profiling.
fn text_feature_041(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.013
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 042 for text profiling.
fn text_feature_042(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.014
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 043 for text profiling.
fn text_feature_043(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.015
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 044 for text profiling.
fn text_feature_044(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.016
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 045 for text profiling.
fn text_feature_045(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.017
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 046 for text profiling.
fn text_feature_046(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.018
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 047 for text profiling.
fn text_feature_047(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.019
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 048 for text profiling.
fn text_feature_048(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.02
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 049 for text profiling.
fn text_feature_049(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.021
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 050 for text profiling.
fn text_feature_050(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.022
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 051 for text profiling.
fn text_feature_051(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.023
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 052 for text profiling.
fn text_feature_052(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.024
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 053 for text profiling.
fn text_feature_053(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.025
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 054 for text profiling.
fn text_feature_054(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.026
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 055 for text profiling.
fn text_feature_055(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.027
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 056 for text profiling.
fn text_feature_056(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.028
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 057 for text profiling.
fn text_feature_057(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.029
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 058 for text profiling.
fn text_feature_058(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.001
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 059 for text profiling.
fn text_feature_059(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.002
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 060 for text profiling.
fn text_feature_060(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.003
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 061 for text profiling.
fn text_feature_061(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.004
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 062 for text profiling.
fn text_feature_062(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.005
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 063 for text profiling.
fn text_feature_063(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.006
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 064 for text profiling.
fn text_feature_064(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.007
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 065 for text profiling.
fn text_feature_065(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.008
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 066 for text profiling.
fn text_feature_066(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.009
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 067 for text profiling.
fn text_feature_067(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.01
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 068 for text profiling.
fn text_feature_068(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.011
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 069 for text profiling.
fn text_feature_069(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.012
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 070 for text profiling.
fn text_feature_070(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.013
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 071 for text profiling.
fn text_feature_071(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.014
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 072 for text profiling.
fn text_feature_072(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.015
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 073 for text profiling.
fn text_feature_073(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.016
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 074 for text profiling.
fn text_feature_074(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.017
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 075 for text profiling.
fn text_feature_075(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.018
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 076 for text profiling.
fn text_feature_076(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.019
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 077 for text profiling.
fn text_feature_077(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.02
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 078 for text profiling.
fn text_feature_078(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.021
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 079 for text profiling.
fn text_feature_079(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.022
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 080 for text profiling.
fn text_feature_080(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.023
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 081 for text profiling.
fn text_feature_081(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.024
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 082 for text profiling.
fn text_feature_082(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.025
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 083 for text profiling.
fn text_feature_083(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.026
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 084 for text profiling.
fn text_feature_084(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.027
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 085 for text profiling.
fn text_feature_085(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.028
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 086 for text profiling.
fn text_feature_086(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.029
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 087 for text profiling.
fn text_feature_087(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.001
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 088 for text profiling.
fn text_feature_088(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.002
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 089 for text profiling.
fn text_feature_089(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.003
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 090 for text profiling.
fn text_feature_090(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.004
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 091 for text profiling.
fn text_feature_091(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.005
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 092 for text profiling.
fn text_feature_092(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.006
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 093 for text profiling.
fn text_feature_093(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.007
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 094 for text profiling.
fn text_feature_094(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.008
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 095 for text profiling.
fn text_feature_095(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.009
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 096 for text profiling.
fn text_feature_096(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.01
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 097 for text profiling.
fn text_feature_097(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.011
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 098 for text profiling.
fn text_feature_098(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.012
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 099 for text profiling.
fn text_feature_099(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.013
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 100 for text profiling.
fn text_feature_100(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.014
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 101 for text profiling.
fn text_feature_101(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.015
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 102 for text profiling.
fn text_feature_102(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.016
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 103 for text profiling.
fn text_feature_103(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.017
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 104 for text profiling.
fn text_feature_104(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.018
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 105 for text profiling.
fn text_feature_105(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.019
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 106 for text profiling.
fn text_feature_106(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.02
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 107 for text profiling.
fn text_feature_107(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.021
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 108 for text profiling.
fn text_feature_108(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.022
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 109 for text profiling.
fn text_feature_109(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.023
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 110 for text profiling.
fn text_feature_110(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.024
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 111 for text profiling.
fn text_feature_111(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.025
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 112 for text profiling.
fn text_feature_112(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.026
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 113 for text profiling.
fn text_feature_113(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.027
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 114 for text profiling.
fn text_feature_114(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.028
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 115 for text profiling.
fn text_feature_115(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.029
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 116 for text profiling.
fn text_feature_116(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.001
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 117 for text profiling.
fn text_feature_117(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.002
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 118 for text profiling.
fn text_feature_118(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.003
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 119 for text profiling.
fn text_feature_119(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.004
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 120 for text profiling.
fn text_feature_120(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.005
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 121 for text profiling.
fn text_feature_121(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.006
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 122 for text profiling.
fn text_feature_122(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.007
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 123 for text profiling.
fn text_feature_123(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.008
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 124 for text profiling.
fn text_feature_124(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.009
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 125 for text profiling.
fn text_feature_125(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.01
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 126 for text profiling.
fn text_feature_126(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.011
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 127 for text profiling.
fn text_feature_127(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.012
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 128 for text profiling.
fn text_feature_128(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.013
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 129 for text profiling.
fn text_feature_129(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.014
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 130 for text profiling.
fn text_feature_130(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.015
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 131 for text profiling.
fn text_feature_131(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.016
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 132 for text profiling.
fn text_feature_132(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.017
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 133 for text profiling.
fn text_feature_133(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.018
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 134 for text profiling.
fn text_feature_134(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.019
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 135 for text profiling.
fn text_feature_135(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.02
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 136 for text profiling.
fn text_feature_136(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.021
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 137 for text profiling.
fn text_feature_137(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.022
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 138 for text profiling.
fn text_feature_138(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.023
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 139 for text profiling.
fn text_feature_139(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.024
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 140 for text profiling.
fn text_feature_140(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.025
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 141 for text profiling.
fn text_feature_141(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.026
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 142 for text profiling.
fn text_feature_142(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.027
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 143 for text profiling.
fn text_feature_143(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.028
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 144 for text profiling.
fn text_feature_144(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.029
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 145 for text profiling.
fn text_feature_145(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.001
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 146 for text profiling.
fn text_feature_146(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.002
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 147 for text profiling.
fn text_feature_147(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.003
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 148 for text profiling.
fn text_feature_148(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.004
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 149 for text profiling.
fn text_feature_149(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.005
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 150 for text profiling.
fn text_feature_150(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.006
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 151 for text profiling.
fn text_feature_151(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.007
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 152 for text profiling.
fn text_feature_152(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.008
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 153 for text profiling.
fn text_feature_153(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.009
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 154 for text profiling.
fn text_feature_154(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.01
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 155 for text profiling.
fn text_feature_155(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.011
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 156 for text profiling.
fn text_feature_156(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.012
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 157 for text profiling.
fn text_feature_157(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.013
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 158 for text profiling.
fn text_feature_158(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.014
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 159 for text profiling.
fn text_feature_159(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.015
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 160 for text profiling.
fn text_feature_160(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.016
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 161 for text profiling.
fn text_feature_161(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.017
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 162 for text profiling.
fn text_feature_162(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.018
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 163 for text profiling.
fn text_feature_163(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.019
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 164 for text profiling.
fn text_feature_164(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.02
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 165 for text profiling.
fn text_feature_165(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.021
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 166 for text profiling.
fn text_feature_166(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.022
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 167 for text profiling.
fn text_feature_167(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.023
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 168 for text profiling.
fn text_feature_168(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.024
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 169 for text profiling.
fn text_feature_169(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.025
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 170 for text profiling.
fn text_feature_170(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.026
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 171 for text profiling.
fn text_feature_171(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.027
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 172 for text profiling.
fn text_feature_172(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.028
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 173 for text profiling.
fn text_feature_173(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.029
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 174 for text profiling.
fn text_feature_174(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.001
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 175 for text profiling.
fn text_feature_175(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.002
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 176 for text profiling.
fn text_feature_176(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.003
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 177 for text profiling.
fn text_feature_177(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.004
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 178 for text profiling.
fn text_feature_178(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.005
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 179 for text profiling.
fn text_feature_179(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.006
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 180 for text profiling.
fn text_feature_180(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.007
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 181 for text profiling.
fn text_feature_181(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.008
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 182 for text profiling.
fn text_feature_182(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.009
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 183 for text profiling.
fn text_feature_183(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.01
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 184 for text profiling.
fn text_feature_184(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.011
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 185 for text profiling.
fn text_feature_185(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.012
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 186 for text profiling.
fn text_feature_186(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.013
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 187 for text profiling.
fn text_feature_187(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.014
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 188 for text profiling.
fn text_feature_188(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.015
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 189 for text profiling.
fn text_feature_189(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.016
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 190 for text profiling.
fn text_feature_190(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.017
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 191 for text profiling.
fn text_feature_191(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.002
  let lexical_signal = unit.token_count.to_double() * 0.018
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 192 for text profiling.
fn text_feature_192(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.003
  let lexical_signal = unit.token_count.to_double() * 0.019
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 193 for text profiling.
fn text_feature_193(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.004
  let lexical_signal = unit.token_count.to_double() * 0.02
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 194 for text profiling.
fn text_feature_194(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.005
  let lexical_signal = unit.token_count.to_double() * 0.021
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 195 for text profiling.
fn text_feature_195(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.006
  let lexical_signal = unit.token_count.to_double() * 0.022
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 196 for text profiling.
fn text_feature_196(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.007
  let lexical_signal = unit.token_count.to_double() * 0.023
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 197 for text profiling.
fn text_feature_197(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.008
  let lexical_signal = unit.token_count.to_double() * 0.024
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0003
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 198 for text profiling.
fn text_feature_198(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.009
  let lexical_signal = unit.token_count.to_double() * 0.025
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0004
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 199 for text profiling.
fn text_feature_199(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.01
  let lexical_signal = unit.token_count.to_double() * 0.026
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0005
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 200 for text profiling.
fn text_feature_200(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.011
  let lexical_signal = unit.token_count.to_double() * 0.027
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0006
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 201 for text profiling.
fn text_feature_201(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.012
  let lexical_signal = unit.token_count.to_double() * 0.028
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0007
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 202 for text profiling.
fn text_feature_202(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.013
  let lexical_signal = unit.token_count.to_double() * 0.029
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0008
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 203 for text profiling.
fn text_feature_203(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.014
  let lexical_signal = unit.token_count.to_double() * 0.001
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0009
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 204 for text profiling.
fn text_feature_204(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.015
  let lexical_signal = unit.token_count.to_double() * 0.002
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 205 for text profiling.
fn text_feature_205(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.016
  let lexical_signal = unit.token_count.to_double() * 0.003
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0011
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 206 for text profiling.
fn text_feature_206(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.017
  let lexical_signal = unit.token_count.to_double() * 0.004
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0012
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 207 for text profiling.
fn text_feature_207(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.018
  let lexical_signal = unit.token_count.to_double() * 0.005
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0013
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 208 for text profiling.
fn text_feature_208(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.019
  let lexical_signal = unit.token_count.to_double() * 0.006
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0001
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Deterministic lexical/position feature 209 for text profiling.
fn text_feature_209(unit : TextUnit) -> Double {
  let position_signal = (unit.id + 1).to_double() * 0.001
  let lexical_signal = unit.token_count.to_double() * 0.007
  let paragraph_signal = (unit.paragraph_index + unit.sentence_index + 1).to_double() *
    0.0002
  (unit.char_weight + position_signal + lexical_signal + paragraph_signal).abs()
}

///|
/// Extract the alignment feature vector for ranking and calibration.
pub fn alignment_feature_vector(pair : AlignmentPair) -> Array[Double] {
  [
    alignment_feature_000(pair),
    alignment_feature_001(pair),
    alignment_feature_002(pair),
    alignment_feature_003(pair),
    alignment_feature_004(pair),
    alignment_feature_005(pair),
    alignment_feature_006(pair),
    alignment_feature_007(pair),
    alignment_feature_008(pair),
    alignment_feature_009(pair),
    alignment_feature_010(pair),
    alignment_feature_011(pair),
    alignment_feature_012(pair),
    alignment_feature_013(pair),
    alignment_feature_014(pair),
    alignment_feature_015(pair),
    alignment_feature_016(pair),
    alignment_feature_017(pair),
    alignment_feature_018(pair),
    alignment_feature_019(pair),
    alignment_feature_020(pair),
    alignment_feature_021(pair),
    alignment_feature_022(pair),
    alignment_feature_023(pair),
    alignment_feature_024(pair),
    alignment_feature_025(pair),
    alignment_feature_026(pair),
    alignment_feature_027(pair),
    alignment_feature_028(pair),
    alignment_feature_029(pair),
    alignment_feature_030(pair),
    alignment_feature_031(pair),
    alignment_feature_032(pair),
    alignment_feature_033(pair),
    alignment_feature_034(pair),
    alignment_feature_035(pair),
    alignment_feature_036(pair),
    alignment_feature_037(pair),
    alignment_feature_038(pair),
    alignment_feature_039(pair),
    alignment_feature_040(pair),
    alignment_feature_041(pair),
    alignment_feature_042(pair),
    alignment_feature_043(pair),
    alignment_feature_044(pair),
    alignment_feature_045(pair),
    alignment_feature_046(pair),
    alignment_feature_047(pair),
    alignment_feature_048(pair),
    alignment_feature_049(pair),
    alignment_feature_050(pair),
    alignment_feature_051(pair),
    alignment_feature_052(pair),
    alignment_feature_053(pair),
    alignment_feature_054(pair),
    alignment_feature_055(pair),
    alignment_feature_056(pair),
    alignment_feature_057(pair),
    alignment_feature_058(pair),
    alignment_feature_059(pair),
    alignment_feature_060(pair),
    alignment_feature_061(pair),
    alignment_feature_062(pair),
    alignment_feature_063(pair),
    alignment_feature_064(pair),
    alignment_feature_065(pair),
    alignment_feature_066(pair),
    alignment_feature_067(pair),
    alignment_feature_068(pair),
    alignment_feature_069(pair),
    alignment_feature_070(pair),
    alignment_feature_071(pair),
    alignment_feature_072(pair),
    alignment_feature_073(pair),
    alignment_feature_074(pair),
    alignment_feature_075(pair),
    alignment_feature_076(pair),
    alignment_feature_077(pair),
    alignment_feature_078(pair),
    alignment_feature_079(pair),
    alignment_feature_080(pair),
    alignment_feature_081(pair),
    alignment_feature_082(pair),
    alignment_feature_083(pair),
    alignment_feature_084(pair),
    alignment_feature_085(pair),
    alignment_feature_086(pair),
    alignment_feature_087(pair),
    alignment_feature_088(pair),
    alignment_feature_089(pair),
    alignment_feature_090(pair),
    alignment_feature_091(pair),
    alignment_feature_092(pair),
    alignment_feature_093(pair),
    alignment_feature_094(pair),
    alignment_feature_095(pair),
    alignment_feature_096(pair),
    alignment_feature_097(pair),
    alignment_feature_098(pair),
    alignment_feature_099(pair),
    alignment_feature_100(pair),
    alignment_feature_101(pair),
    alignment_feature_102(pair),
    alignment_feature_103(pair),
    alignment_feature_104(pair),
    alignment_feature_105(pair),
    alignment_feature_106(pair),
    alignment_feature_107(pair),
    alignment_feature_108(pair),
    alignment_feature_109(pair),
    alignment_feature_110(pair),
    alignment_feature_111(pair),
    alignment_feature_112(pair),
    alignment_feature_113(pair),
    alignment_feature_114(pair),
    alignment_feature_115(pair),
    alignment_feature_116(pair),
    alignment_feature_117(pair),
    alignment_feature_118(pair),
    alignment_feature_119(pair),
    alignment_feature_120(pair),
    alignment_feature_121(pair),
    alignment_feature_122(pair),
    alignment_feature_123(pair),
    alignment_feature_124(pair),
    alignment_feature_125(pair),
    alignment_feature_126(pair),
    alignment_feature_127(pair),
    alignment_feature_128(pair),
    alignment_feature_129(pair),
    alignment_feature_130(pair),
    alignment_feature_131(pair),
    alignment_feature_132(pair),
    alignment_feature_133(pair),
    alignment_feature_134(pair),
    alignment_feature_135(pair),
    alignment_feature_136(pair),
    alignment_feature_137(pair),
    alignment_feature_138(pair),
    alignment_feature_139(pair),
    alignment_feature_140(pair),
    alignment_feature_141(pair),
    alignment_feature_142(pair),
    alignment_feature_143(pair),
    alignment_feature_144(pair),
    alignment_feature_145(pair),
    alignment_feature_146(pair),
    alignment_feature_147(pair),
    alignment_feature_148(pair),
    alignment_feature_149(pair),
    alignment_feature_150(pair),
    alignment_feature_151(pair),
    alignment_feature_152(pair),
    alignment_feature_153(pair),
    alignment_feature_154(pair),
    alignment_feature_155(pair),
    alignment_feature_156(pair),
    alignment_feature_157(pair),
    alignment_feature_158(pair),
    alignment_feature_159(pair),
    alignment_feature_160(pair),
    alignment_feature_161(pair),
    alignment_feature_162(pair),
    alignment_feature_163(pair),
    alignment_feature_164(pair),
    alignment_feature_165(pair),
    alignment_feature_166(pair),
    alignment_feature_167(pair),
    alignment_feature_168(pair),
    alignment_feature_169(pair),
    alignment_feature_170(pair),
    alignment_feature_171(pair),
    alignment_feature_172(pair),
    alignment_feature_173(pair),
    alignment_feature_174(pair),
    alignment_feature_175(pair),
    alignment_feature_176(pair),
    alignment_feature_177(pair),
    alignment_feature_178(pair),
    alignment_feature_179(pair),
    alignment_feature_180(pair),
    alignment_feature_181(pair),
    alignment_feature_182(pair),
    alignment_feature_183(pair),
    alignment_feature_184(pair),
    alignment_feature_185(pair),
    alignment_feature_186(pair),
    alignment_feature_187(pair),
    alignment_feature_188(pair),
    alignment_feature_189(pair),
    alignment_feature_190(pair),
    alignment_feature_191(pair),
    alignment_feature_192(pair),
    alignment_feature_193(pair),
    alignment_feature_194(pair),
    alignment_feature_195(pair),
    alignment_feature_196(pair),
    alignment_feature_197(pair),
    alignment_feature_198(pair),
    alignment_feature_199(pair),
    alignment_feature_200(pair),
    alignment_feature_201(pair),
    alignment_feature_202(pair),
    alignment_feature_203(pair),
    alignment_feature_204(pair),
    alignment_feature_205(pair),
    alignment_feature_206(pair),
    alignment_feature_207(pair),
    alignment_feature_208(pair),
    alignment_feature_209(pair),
  ]
}

///|
/// Extract the text-unit feature vector for segmentation experiments.
pub fn text_feature_vector(unit : TextUnit) -> Array[Double] {
  [
    text_feature_000(unit),
    text_feature_001(unit),
    text_feature_002(unit),
    text_feature_003(unit),
    text_feature_004(unit),
    text_feature_005(unit),
    text_feature_006(unit),
    text_feature_007(unit),
    text_feature_008(unit),
    text_feature_009(unit),
    text_feature_010(unit),
    text_feature_011(unit),
    text_feature_012(unit),
    text_feature_013(unit),
    text_feature_014(unit),
    text_feature_015(unit),
    text_feature_016(unit),
    text_feature_017(unit),
    text_feature_018(unit),
    text_feature_019(unit),
    text_feature_020(unit),
    text_feature_021(unit),
    text_feature_022(unit),
    text_feature_023(unit),
    text_feature_024(unit),
    text_feature_025(unit),
    text_feature_026(unit),
    text_feature_027(unit),
    text_feature_028(unit),
    text_feature_029(unit),
    text_feature_030(unit),
    text_feature_031(unit),
    text_feature_032(unit),
    text_feature_033(unit),
    text_feature_034(unit),
    text_feature_035(unit),
    text_feature_036(unit),
    text_feature_037(unit),
    text_feature_038(unit),
    text_feature_039(unit),
    text_feature_040(unit),
    text_feature_041(unit),
    text_feature_042(unit),
    text_feature_043(unit),
    text_feature_044(unit),
    text_feature_045(unit),
    text_feature_046(unit),
    text_feature_047(unit),
    text_feature_048(unit),
    text_feature_049(unit),
    text_feature_050(unit),
    text_feature_051(unit),
    text_feature_052(unit),
    text_feature_053(unit),
    text_feature_054(unit),
    text_feature_055(unit),
    text_feature_056(unit),
    text_feature_057(unit),
    text_feature_058(unit),
    text_feature_059(unit),
    text_feature_060(unit),
    text_feature_061(unit),
    text_feature_062(unit),
    text_feature_063(unit),
    text_feature_064(unit),
    text_feature_065(unit),
    text_feature_066(unit),
    text_feature_067(unit),
    text_feature_068(unit),
    text_feature_069(unit),
    text_feature_070(unit),
    text_feature_071(unit),
    text_feature_072(unit),
    text_feature_073(unit),
    text_feature_074(unit),
    text_feature_075(unit),
    text_feature_076(unit),
    text_feature_077(unit),
    text_feature_078(unit),
    text_feature_079(unit),
    text_feature_080(unit),
    text_feature_081(unit),
    text_feature_082(unit),
    text_feature_083(unit),
    text_feature_084(unit),
    text_feature_085(unit),
    text_feature_086(unit),
    text_feature_087(unit),
    text_feature_088(unit),
    text_feature_089(unit),
    text_feature_090(unit),
    text_feature_091(unit),
    text_feature_092(unit),
    text_feature_093(unit),
    text_feature_094(unit),
    text_feature_095(unit),
    text_feature_096(unit),
    text_feature_097(unit),
    text_feature_098(unit),
    text_feature_099(unit),
    text_feature_100(unit),
    text_feature_101(unit),
    text_feature_102(unit),
    text_feature_103(unit),
    text_feature_104(unit),
    text_feature_105(unit),
    text_feature_106(unit),
    text_feature_107(unit),
    text_feature_108(unit),
    text_feature_109(unit),
    text_feature_110(unit),
    text_feature_111(unit),
    text_feature_112(unit),
    text_feature_113(unit),
    text_feature_114(unit),
    text_feature_115(unit),
    text_feature_116(unit),
    text_feature_117(unit),
    text_feature_118(unit),
    text_feature_119(unit),
    text_feature_120(unit),
    text_feature_121(unit),
    text_feature_122(unit),
    text_feature_123(unit),
    text_feature_124(unit),
    text_feature_125(unit),
    text_feature_126(unit),
    text_feature_127(unit),
    text_feature_128(unit),
    text_feature_129(unit),
    text_feature_130(unit),
    text_feature_131(unit),
    text_feature_132(unit),
    text_feature_133(unit),
    text_feature_134(unit),
    text_feature_135(unit),
    text_feature_136(unit),
    text_feature_137(unit),
    text_feature_138(unit),
    text_feature_139(unit),
    text_feature_140(unit),
    text_feature_141(unit),
    text_feature_142(unit),
    text_feature_143(unit),
    text_feature_144(unit),
    text_feature_145(unit),
    text_feature_146(unit),
    text_feature_147(unit),
    text_feature_148(unit),
    text_feature_149(unit),
    text_feature_150(unit),
    text_feature_151(unit),
    text_feature_152(unit),
    text_feature_153(unit),
    text_feature_154(unit),
    text_feature_155(unit),
    text_feature_156(unit),
    text_feature_157(unit),
    text_feature_158(unit),
    text_feature_159(unit),
    text_feature_160(unit),
    text_feature_161(unit),
    text_feature_162(unit),
    text_feature_163(unit),
    text_feature_164(unit),
    text_feature_165(unit),
    text_feature_166(unit),
    text_feature_167(unit),
    text_feature_168(unit),
    text_feature_169(unit),
    text_feature_170(unit),
    text_feature_171(unit),
    text_feature_172(unit),
    text_feature_173(unit),
    text_feature_174(unit),
    text_feature_175(unit),
    text_feature_176(unit),
    text_feature_177(unit),
    text_feature_178(unit),
    text_feature_179(unit),
    text_feature_180(unit),
    text_feature_181(unit),
    text_feature_182(unit),
    text_feature_183(unit),
    text_feature_184(unit),
    text_feature_185(unit),
    text_feature_186(unit),
    text_feature_187(unit),
    text_feature_188(unit),
    text_feature_189(unit),
    text_feature_190(unit),
    text_feature_191(unit),
    text_feature_192(unit),
    text_feature_193(unit),
    text_feature_194(unit),
    text_feature_195(unit),
    text_feature_196(unit),
    text_feature_197(unit),
    text_feature_198(unit),
    text_feature_199(unit),
    text_feature_200(unit),
    text_feature_201(unit),
    text_feature_202(unit),
    text_feature_203(unit),
    text_feature_204(unit),
    text_feature_205(unit),
    text_feature_206(unit),
    text_feature_207(unit),
    text_feature_208(unit),
    text_feature_209(unit),
  ]
}

///|
/// Return a compact aggregate of an alignment feature vector.
pub fn alignment_feature_mean(pair : AlignmentPair) -> Double {
  let features = alignment_feature_vector(pair)
  if features.is_empty() {
    0.0
  } else {
    features.fold(init=0.0, (total, value) => total + value) /
    features.length().to_double()
  }
}

///|
/// Return the largest feature value for a text unit.
pub fn text_feature_peak(unit : TextUnit) -> Double {
  let features = text_feature_vector(unit)
  if features.is_empty() {
    0.0
  } else {
    features.fold(init=features[0], (largest, value) => largest.max(value))
  }
}

///|
/// Convert a feature vector into a stable comma-separated row.
pub fn feature_vector_to_csv(values : Array[Double]) -> String {
  values.map(fn(value) { "\{value}" }).join(",")
}

inductive XWResult where
  | forced
  | reject
  | accept

-- 失败结局
inductive C3S22 : {_ : Bool} → Type where
  | A : @C3S22 gj

-- 失败结局：受罚
inductive C3S21 : {_ : Bool} → Type where
  | A : @C3S22 gj → @C3S21 gj

-- 失败结局：批斗
inductive C3S20 : {_ : Bool} → Type where
  | A : @C3S21 gj → @C3S20 gj

-- 失败结局：咸阳宫大殿
inductive C3S19 : {_ : Bool} → Type where
  | A : @C3S20 gj → @C3S19 gj

-- 苟安结局
inductive C3S18 : {_ : Bool} → Type where
  | A : @C3S18 gj

-- 苟安结局：贬官
inductive C3S17 : {_ : Bool} → Type where
  | A : @C3S18 gj → @C3S17 gj

-- 苟安结局：功过争执
inductive C3S16 : {_ : Bool} → Type where
  | A : @C3S17 gj → @C3S16 gj

-- 苟安结局：咸阳宫大殿
inductive C3S15 : {_ : Bool} → Type where
  | A : @C3S16 gj → @C3S15 gj

-- 史实结局
inductive C3S14 : {_ : Bool} → Type where
  | A : @C3S14 gj

-- 史实结局：全面工程
inductive C3S13 : {_ : Bool} → Type where
  | A : @C3S14 gj → @C3S13 gj

-- 史实结局：人殉废除
inductive C3S12 : {_ : Bool} → Type where
  | A : @C3S13 gj → @C3S12 gj

-- 史实结局：咸阳宫大殿
inductive C3S11 : {_ : Bool} → Type where
  | A : @C3S12 gj → @C3S11 gj

-- 全面否定（没有工匠）
inductive C3S10 : {_ : Bool} → Type where
  | A : @C3S19 gj → @C3S10 gj

-- 全面否定（工匠不满）
inductive C3S9 : {_ : Bool} → Type where
  | A : @C3S19 gj → @C3S9 gj

-- 全面否定
inductive C3S8 : {_ : Bool} → Type where
  | A : @C3S19 gj → @C3S8 gj

-- 工匠不满
inductive C3S7 : {_ : Bool} → Type where
  | A : @C3S15 gj → @C3S7 gj

-- 粗制滥造
inductive C3S6 : {_ : Bool} → Type where
  | A : @C3S15 gj → @C3S6 gj

-- 工人暴乱
inductive C3S5 : {_ : Bool} → Type where
  | A : @C3S15 gj → @C3S5 gj

-- 完美
inductive C3S4 : {_ : Bool} → Type where
  | A : @C3S11 gj → @C3S4 gj

-- 耗费财力
inductive C3S3 : {_ : Bool} → Type where
  | A : @C3S15 gj → @C3S3 gj

inductive C3S2 : {_ : XWResult} → {_ : Ordering} → Ordering → Type where
  | A0 : @C3S3 true → @C3S2 .accept .gt .gt
  | A1 : @C3S4 false → @C3S2 .accept .gt .eq
  | A2 : @C3S5 false → @C3S2 .accept .gt .lt
  | A3 : @C3S4 false → @C3S2 .accept .eq .gt
  | A4 : @C3S4 false → @C3S2 .accept .eq .eq
  | A5 : @C3S5 false → @C3S2 .accept .eq .lt
  | A6 : @C3S6 false → @C3S2 .accept .lt .gt
  | A7 : @C3S6 false → @C3S2 .accept .lt .eq
  | A8 : @C3S8 false → @C3S2 .accept .lt .lt
  | A9 : @C3S3 true → @C3S2 .forced .gt .gt
  | A10 : @C3S4 false → @C3S2 .forced .gt .eq
  | A11 : @C3S5 false → @C3S2 .forced .gt .lt
  | A12 : @C3S4 false → @C3S2 .forced .eq .gt
  | A13 : @C3S7 false → @C3S2 .forced .eq .eq
  | A14 : @C3S8 false → @C3S2 .forced .eq .lt
  | A15 : @C3S6 false → @C3S2 .forced .lt .gt
  | A16 : @C3S9 false → @C3S2 .forced .lt .eq
  | A17 : @C3S9 false → @C3S2 .forced .lt .lt
  | A18 : @C3S10 true → @C3S2 .reject .gt .gt
  | A19 : @C3S10 false → @C3S2 .reject .gt .eq
  | A20 : @C3S10 false → @C3S2 .reject .gt .lt
  | A21 : @C3S10 false → @C3S2 .reject .eq .gt
  | A22 : @C3S10 false → @C3S2 .reject .eq .eq
  | A23 : @C3S10 false → @C3S2 .reject .eq .lt
  | A24 : @C3S10 false → @C3S2 .reject .lt .gt
  | A25 : @C3S10 false → @C3S2 .reject .lt .eq
  | A26 : @C3S10 false → @C3S2 .reject .lt .lt

inductive C3S1 : XWResult → {_ : Ordering} → Type where
  | A : @C3S2 xw tt .gt → @C3S1 xw tt
  | B : @C3S2 xw tt .eq → @C3S1 xw tt
  | C : @C3S2 xw tt .lt → @C3S1 xw tt

inductive C3S0 : XWResult → Type where
  | A : @C3S1 xw .gt → C3S0 xw
  | B : @C3S1 xw .eq → C3S0 xw
  | C : @C3S1 xw .lt → C3S0 xw

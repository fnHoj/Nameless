import Nameless.Scenario.C2

mutual

-- 官方辞令
inductive C1S13 : {_ : Bool} → Type where
  | A : @C1S4 ls → @C1S13 ls

-- 诉苦求助
inductive C1S12 : {_ : Bool} → Type where
  | A : @C1S4 ls → @C1S12 ls

-- 展现信心
inductive C1S11 : {_ : Bool} → Type where
  | A : @C1S4 ls → @C1S11 ls

-- 张庶长对话
inductive C1S10 : {_ : Bool} → Type where
  | A : @C1S11 ls → @C1S10 ls
  | B : @C1S12 ls → @C1S10 ls
  | C : @C1S13 ls → @C1S10 ls

-- 无视离开
inductive C1S9 : {_ : Bool} → Type where
  | A : @C1S4 ls → @C1S9 ls

-- 强硬反击
inductive C1S8 : {_ : Bool} → Type where
  | A : @C1S4 ls → @C1S8 ls

-- 谦逊回应
inductive C1S7 : {_ : Bool} → Type where
  | A : @C1S4 ls → @C1S7 ls

-- 赵斛对话
inductive C1S6 : {_ : Bool} → Type where
  | A : @C1S7 ls → @C1S6 ls
  | B : @C1S8 ls → @C1S6 ls
  | C : @C1S9 ls → @C1S6 ls

-- 李斯提及赵斛或张庶长
inductive C1S5 : Bool → Type where
  | A0 : @C1S4 true → C1S5 false
  | A1 : @C1S4 false → C1S5 true

-- 广场
inductive C1S4 : {_ : Bool} → Type where
  | A : @C2S0 false false .first → @C1S4 ls
  | B : C1S5 ls → @C1S4 ls
  | C : @C1S6 ls → @C1S4 ls
  | D : @C1S10 ls → @C1S4 ls

end

-- 表达压力
inductive C1S3 where
  | A : @C1S4 false → C1S3

-- 请教策略
inductive C1S2 where
  | A : @C1S4 false → C1S2

-- 表态保证
inductive C1S1 where
  | A : @C1S4 false → C1S1

-- 广场李斯对话
inductive C1S0 where
  | A : C1S1 → C1S0
  | B : C1S2 → C1S0
  | C : C1S3 → C1S0

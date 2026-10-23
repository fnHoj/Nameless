import Nameless.Scenario.C3

inductive XWState where
  | first
  | second
  | good
  | bad

-- 放弃
inductive C2S31 where
  | A : @C3S0 .reject → C2S31

-- 最后通牒
inductive C2S30 where
  | A : @C3S0 .forced → C2S30

-- 继续保证
inductive C2S29 where
  | A : C2S30 → C2S29
  | B : C2S31 → C2S29

-- 利诱
inductive C2S28 where
  | A : C2S30 → C2S28
  | B : C2S31 → C2S28

-- 直接表明身份
inductive C2S27 where
  | A : C2S30 → C2S27
  | B : C2S31 → C2S27

-- 诉诸仁心（奚翁回答）
inductive C2S26 : Bool → Type where
  | A0 : @C3S0 .accept → C2S26 true
  | A1 : C2S30 → C2S26 false
  | B1 : C2S31 → C2S26 false

-- 诉诸仁心
inductive C2S25 : Bool → Type where
  | A : C2S26 xw → C2S25 xw

-- 奚翁第三轮（不好）
inductive C2S24 : {_ _ : Bool} → Type where
  | A : C2S25 false → C2S24
  | B : C2S30 → C2S24

-- 奚翁第三轮（好）
inductive C2S23 : {_ _ : Bool} → Type where
  | A : C2S25 true → C2S23
  | B : C2S29 → C2S23
  | C : C2S30 → C2S23

mutual

-- 提及往事
inductive C2S22 : {_ : Bool} → Type where
  | A : @C2S0 tt true .good → @C2S22 tt

-- 技术保证
inductive C2S21 : {_ _ : Bool} → Type where
  | A : @C2S0 tt ep .bad → @C2S21 tt ep

-- 诚恳请求
inductive C2S20 : Bool → {_ : Bool} → Type where
  | A0 : @C2S0 true ep .good → @C2S20 true ep
  | A1 : @C2S0 false ep .bad → @C2S20 false ep

-- 奚翁第二轮
inductive C2S19 : {_ : Bool} → Bool → Type where
  | A : @C2S20 tt ep → @C2S19 tt ep
  | B : @C2S21 tt ep → @C2S19 tt ep
  | C : @C2S22 tt → @C2S19 tt true

-- 继续隐瞒
inductive C2S18 : {_ _ : Bool} → Type where
  | A : @C2S0 tt ep .second → @C2S18 tt ep

-- 坦诚相对
inductive C2S17 : {_ _ : Bool} → Type where
  | A : @C2S0 tt ep .second → @C2S17 tt ep

-- 谦逊求教
inductive C2S16 : {_ _ : Bool} → Type where
  | A : @C2S17 tt ep → @C2S16 tt ep
  | B : @C2S18 tt ep → @C2S16 tt ep

-- 奚翁首轮
inductive C2S15 : {_ _ : Bool} → Type where
  | A : C2S27 → @C2S15 tt ep
  | B : @C2S16 tt ep → @C2S15 tt ep
  | C : C2S28 → @C2S15 tt ep

-- 聆听故事
inductive C2S14 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 tt ep xw → @C2S14 tt ep xw

-- 不再追问
inductive C2S13 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 tt ep xw → @C2S13 tt ep xw

-- 追问阿房宫
inductive C2S12 : {_ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 tt true xw → @C2S12 tt xw

-- 打听奚翁
inductive C2S11 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S12 tt xw → @C2S11 tt ep xw
  | B : @C2S13 tt ep xw → @C2S11 tt ep xw

-- 否认目的
inductive C2S10 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 tt ep xw → @C2S10 tt ep xw

-- 承认目的
inductive C2S9 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 tt ep xw → @C2S9 tt ep xw

-- 搭话请教
inductive C2S8 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S9 tt ep xw → @C2S8 tt ep xw
  | B : @C2S10 tt ep xw → @C2S8 tt ep xw

-- 邹衍对话
inductive C2S7 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S8 tt ep xw → @C2S7 tt ep xw
  | B : @C2S11 tt ep xw → @C2S7 tt ep xw
  | C : @C2S14 tt ep xw → @C2S7 tt ep xw

-- 离开
inductive C2S6 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 tt ep xw → @C2S6 tt ep xw

-- 询问陶土
inductive C2S5 : {_ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 true ep xw → @C2S5 ep xw

-- 隐瞒目的
inductive C2S4 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 tt ep xw → @C2S4 tt ep xw

-- 如实相告
inductive C2S3 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S0 tt ep xw → @C2S3 tt ep xw

-- 打听工匠
inductive C2S2 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S3 tt ep xw → @C2S2 tt ep xw
  | B : @C2S4 tt ep xw → @C2S2 tt ep xw

-- 稷对话
inductive C2S1 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S2 tt ep xw → @C2S1 tt ep xw
  | B : @C2S5 tt xw → @C2S1 tt ep xw
  | C : @C2S6 tt ep xw → @C2S1 tt ep xw

-- 集市
inductive C2S0 : {_ _ : Bool} → {_ : XWState} → Type where
  | A : @C2S1 tt ep xw → @C2S0 tt ep xw
  | B : @C2S7 tt ep xw → @C2S0 tt ep xw
  | C0 : @C2S15 tt ep → @C2S0 tt ep .first
  | C1 : @C2S19 tt ep → @C2S0 tt ep .second
  | C2 : @C2S23 tt ep → @C2S0 tt ep .good
  | C3 : @C2S24 tt ep → @C2S0 tt ep .bad

end

import Nameless.Scenario.C1

-- 退朝
inductive C0S5 where
  | A : C1S0 → C0S5

-- 接受任务
inductive C0S4 where
  | A : C0S5 → C0S4

-- 提出造陶俑
inductive C0S3 where
  | A : C0S4 → C0S3

-- 李斯推荐
inductive C0S2 where
  | A : C0S3 → C0S2

-- 皇宫环境，准备上朝
inductive C0S1 where
  | A : C0S2 → C0S1

-- 故事开始：博物馆场景
inductive C0S0 where
  | A : C0S1 → C0S0

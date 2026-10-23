import Nameless.Scenario.C0

macro "A" : tactic => `(tactic|first
  | refine .A0 ?_
  | refine .A1 ?_
  | refine .A ?_
  | fail "A 选项不可用")
macro "B" : tactic => `(tactic|first | refine .B ?_ | fail "B 选项不可用")
macro "C" : tactic => `(tactic|first
  | refine .C0 ?_
  | refine .C1 ?_
  | refine .C2 ?_
  | refine .C3 ?_
  | refine .C4 ?_
  | refine .C ?_
  | fail "C 选项不可用")
macro "D" : tactic => `(tactic|first | refine .D ?_ | fail "D 选项不可用")
macro "a" : tactic => `(tactic|A)
macro "b" : tactic => `(tactic|B)
macro "c" : tactic => `(tactic|C)
macro "d" : tactic => `(tactic|C)

import Nameless.Scenario.C0

macro "A" : tactic => `(tactic|first
  | refine .A0 ?_
  | refine .A1 ?_
  | refine .A2 ?_
  | refine .A3 ?_
  | refine .A4 ?_
  | refine .A5 ?_
  | refine .A6 ?_
  | refine .A7 ?_
  | refine .A8 ?_
  | refine .A9 ?_
  | refine .A10 ?_
  | refine .A11 ?_
  | refine .A12 ?_
  | refine .A13 ?_
  | refine .A14 ?_
  | refine .A15 ?_
  | refine .A16 ?_
  | refine .A17 ?_
  | refine .A18 ?_
  | refine .A19 ?_
  | refine .A20 ?_
  | refine .A21 ?_
  | refine .A22 ?_
  | refine .A23 ?_
  | refine .A24 ?_
  | refine .A25 ?_
  | refine .A26 ?_
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

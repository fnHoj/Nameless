inductive XWResult where
  | forced
  | reject
  | accept

inductive C3S0 : XWResult → Type where

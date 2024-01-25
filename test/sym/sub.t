sub binop:
  $ dune exec owi -- sym sub_i32.wat
  Assert failure: (i32.ge symbol_0 (i32.sub symbol_0 symbol_1))
  Model:
    (model
      (symbol_0 (i32 -2147483648))
      (symbol_1 (i32 2147483645)))
  Reached problem!
  $ dune exec owi -- sym sub_i64.wat
  Assert failure: (i64.ge symbol_0 (i64.sub symbol_0 symbol_1))
  Model:
    (model
      (symbol_0 (i64 -9223372036854775808))
      (symbol_1 (i64 9223372036854775805)))
  Reached problem!
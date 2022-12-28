type bool_expr =
                     | Var of string
                     | Not of bool_expr
                     | And of bool_expr * bool_expr
                     | Or of bool_expr * bool_expr;;

let rec evaluate a b valA valB expr = match expr with
                                            | Var(x) -> if x = a then valA else valB
                                            | Not(e) -> not(evaluate a b valA valB e)
                                            | Or(e1, e2) -> (evaluate a b valA valB e1) || (evaluate a b valA valB e2)
                                            | And(e1, e2) -> (evaluate a b valA valB e1) && (evaluate a b valA valB e2);;

let table_two a b expr = [(true, true, evaluate a b true true expr);
                                (true, false, evaluate a b true false expr);
                                (false, true, evaluate a b false true expr);
                                (false, false, evaluate a b false false expr)];;

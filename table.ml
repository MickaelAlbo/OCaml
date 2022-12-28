(* bool_expr of the lecture *)
type bool_expr =
                     | Var of string
                     | Not of bool_expr
                     | And of bool_expr * bool_expr
                     | Or of bool_expr * bool_expr;;

(* evaluate an expression using associative list. *)
let rec evaluate valVars expr = match expr with
                                      | Var x -> List.assoc x valVars
                                      | Not e -> not (evaluate valVars e)
                                      | And(e1, e2) -> evaluate valVars e1 && evaluate valVars e2
                                      | Or(e1, e2) -> evaluate valVars e1 || evaluate valVars e2;;

(* build table of all possibilities for truth tables. *)
let rec build_table valVars vars expr = match vars with
                                             | [] -> [(List.rev valVars, evaluate valVars expr)]
                                             | k :: l -> build_table ((k, true) :: valVars) l expr
                                                       @ build_table ((k, false) :: valVars) l expr;;

let table vars expr = build_table [] vars expr;;
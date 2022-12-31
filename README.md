# OCaml

## Background
OCaml is a general-purpose, multi-paradigm programming language which extends the Caml dialect of ML with object-oriented features. OCaml was created in 1996 by Xavier Leroy, Jérôme Vouillon, Damien Doligez, Didier Rémy, Ascánder Suárez, and others.  

The OCaml toolchain includes an interactive top-level interpreter, a bytecode compiler, an optimizing native code compiler, a reversible debugger, and a package manager (OPAM). OCaml was initially developed in the context of automated theorem proving, and has an outsize presence in static analysis and formal methods software. Beyond these areas, it has found serious use in systems programming, web development, and financial engineering, among other application domains.

## Insert an element at a given position into a list (insert_at.ml)
Start counting list elements with 0. If the position is larger or equal to the length of the list, insert the element at the end. (The behavior is unspecified if the position is negative.)

## Truth tables for logical expressions - 2 variables (table_two.ml)
Let us define a small "language" for boolean expressions containing variables:
```
# type bool_expr =
  | Var of string
  | Not of bool_expr
  | And of bool_expr * bool_expr
  | Or of bool_expr * bool_expr;;
type bool_expr =
    Var of string
  | Not of bool_expr
  | And of bool_expr * bool_expr
  | Or of bool_expr * bool_expr
```

A logical expression in two variables can then be written in prefix notation. For example, ``(a ∨ b) ∧ (a ∧ b)`` is written:
```
# And (Or (Var "a", Var "b"), And (Var "a", Var "b"));;
- : bool_expr = And (Or (Var "a", Var "b"), And (Var "a", Var "b"))
```
We want to define a function, table_two which returns the truth table of a given logical expression in two variables (specified as arguments). The return value must be a list of triples containing **(value_of_a, value_of_b, value_of_expr)**.

## Truth tables for logical expressions (table.ml)
Generalize the previous problem in such a way that the logical expression may contain any number of logical variables. Define **table** in a way that table variables expr returns the truth table for the expression ``expr``, which contains the logical variables enumerated in **variables**.

## Add an element to a binary tree (add_to_search_tree.ml)
Let define a new type ``binary_tree`` that carries an arbitrary value of type ``'a`` (thus is polymorphic) at each node.
```
# type 'a binary_tree =
  | Empty
  | Node of 'a * 'a binary_tree * 'a binary_tree;;
type 'a binary_tree = Empty | Node of 'a * 'a binary_tree * 'a binary_tree
```
Now we want to add an element to the binary tree, the input will be an element and a binary tree. The return value will the binary tree updated with the input element.

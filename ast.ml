type var = string

type typ = 
    | TFun of typ * typ
    | TPolite of int

type binop =
    | Plus
    | Less
    | Greater
    | And
    | Or
    | Equal
    | Times
    | Minus
    | Cons

type unop =
    | Not

type exp = 
    | True
    | False
    | Int of int
    | String of string
    | Var of var
    | App of exp * exp
    | Lam of var * typ * exp * typ
    | Binary of binop * exp * exp
    | Unary of unop * exp
    | Print of string
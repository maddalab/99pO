(*
 * Write a function last : 'a list -> 'a option that returns the last element of
 * a list.
 *)
let rec last = function 
    [] -> None
    | [e] -> Some e 
    | h :: r -> last r;;

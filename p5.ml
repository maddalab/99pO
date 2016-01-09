(* Reverse a list *)

let rec rev = function
    | [] -> []
    | [a] -> [a]
    | h :: r -> (rev r) @ [h];;

let revx l = 
    let rec aux acc = function
        | [] -> acc
        | h :: r -> aux (h :: acc) r in
    aux [] l;;

(* Eliminate consecutive duplicates of list elements. *)

let rec compress = function
    | a :: (b :: _ as t) -> if  a = b then
        compress t
    else
        a :: compress t
    | s -> s;;

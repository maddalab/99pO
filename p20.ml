(* Insert an element at a given position into a list. *)

let rec insert_at e i = function
    | [] -> [e]
    | h :: r as l ->  if i = 0 then
        e :: l
    else
        h :: (insert e (i - 1) r);;

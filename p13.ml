(* Duplicate the elements of a list. *)

let rec duplicate = function
    | [] -> []
    | h :: r -> h :: h :: (duplicate r);;

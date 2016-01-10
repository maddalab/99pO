(* Drop every N'th element from a list. *)

let drop l n = 
    let rec drop_after l c = match l with
      | [] -> []
      | h :: r -> if c = 1 then drop_after r n else h :: (drop_after r (c - 1))
    in
    drop_after l n;;

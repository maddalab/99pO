(* Replicate the elements of a list a given number of times. *)

let rec replicate l n =
    let rec repeat e c = if c = 0 then [] else e :: (repeat e (c - 1)) in
    match l with 
      | [] -> []
      | h :: r -> (repeat h n) @ (replicate r n);;

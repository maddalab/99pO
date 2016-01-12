(* Rotate a list N places to the left. *)

let rotate l c =
    let rec move e = function
        | [] -> [e]
        | h :: r -> h :: (move e r) in
    let rec move_until l = function
        | 0 -> l
        | c -> match l with
          | [] -> []
          | h :: r -> move_until (move h r) (c - 1) in
    if c < 0 then
        move_until l (List.length l + c)
    else
        move_until l c;;

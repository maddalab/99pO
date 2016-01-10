(* Split a list into two parts; the length of the first part is given. *)

let split l n =
    let rec aux l t c = if c = 0 then
        (l, t)
    else
        match t with
          | [] -> (l, [])
          | h :: r -> aux (l @ [h]) r (c - 1) in
    aux [] l n;;

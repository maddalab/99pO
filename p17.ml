(* Extract a slice from a list *)

let rec slice l s e =  if e = -1 then
      []
  else
      if s = 0 then
          match l with
            | [] -> []
            | h :: r -> h :: (slice r 0 (e - 1))
      else
          match l with
            | [] -> []
            | h :: r -> slice r (s - 1) (e - 1);;


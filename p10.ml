(*Run-length encoding of a list*)

let rec encode l = 
    let rec aux cnt prev = function 
        | [] -> [(cnt, prev)]
        | [a] -> if a = prev then
            [(cnt + 1, a)]
        else
            [(1, prev); (1, a)]
        | h :: r -> if h = prev then
            aux (cnt + 1) h r
        else
            (cnt, prev) :: (aux 1 h r) in
    match l with 
      | [] -> []
      | h :: r -> aux 1 h r;;

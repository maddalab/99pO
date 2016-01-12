(*Remove the K'th element from a list.*)

let rec remove_at i = function
    | [] -> []
    | h :: r -> if i = 0 then
        r
    else
        h :: (remove_at (i - 1) r);;

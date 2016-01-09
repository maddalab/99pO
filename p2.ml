(*Find the last but one (last and penultimate) elements of a list.*)

let rec last_two = function
    | [a;b] -> Some (a, b)
    | h :: r -> last_two r
    | _ -> None

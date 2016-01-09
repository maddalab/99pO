(* Find the number of elements of a list *)
let length l =
    let rec len c = function
        | [] -> c
        | _ :: r -> len (c + 1) r in
    len 0 l;;

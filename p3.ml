(* Find the k'th element of a list.  *)

let rec at n = function
    | [] -> None
    | h :: _ when n = 1 -> Some h
    | _ :: r -> at (n - 1) r;;

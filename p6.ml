(* Find out whether a list is a palindrome. *)

let is_palindrome l =
    let rev l =
        let rec aux acc = function
            | [] -> acc
            | h :: r -> aux (h :: acc) r in
        aux [] l in
    l = (rev l);;


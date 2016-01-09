(* Pack consecutive duplicates of list elements into sublists. *)

let pack lst =
    let rec pack_until acc e = function
        | h :: rest when h = e -> pack_until (h :: acc) e rest
        | remaining -> (acc, remaining) in
    let rec aux acc = function
        | [] -> acc
        | (h :: r as t) -> match (pack_until [] h t) with
        | (p, remaining) -> aux (acc @ [p]) remaining in
    aux [] lst;;

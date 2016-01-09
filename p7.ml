(* Flatten a nested list structure. *)

type 'a node =
    | One of 'a
    | Many of 'a node list;;

let rec flatten = function
    | [] -> []
    | [a] -> (match a with
      | One e -> [e]
      | Many es -> flatten es)
    | h :: r -> (match h with
      | One e -> e :: (flatten r)
      | Many es -> (flatten es) @ (flatten r));;

let rec flattenx = function
    | [] -> []
    | One e :: r -> e :: (flattenx r)
    | Many es :: r -> (flattenx es) @ (flattenx r);;

(*Modified run-length encoding.*)

type 'a rle =
    | One of 'a
    | Many of int * 'a;;

let encode l =
    let rec aux cnt acc = function
        | [] -> []
        | [x] -> if cnt = 0 then One x :: acc else Many (cnt + 1, x) :: acc
        | x :: (y :: _ as t) -> if x = y then 
            aux (cnt + 1) acc t
        else
            if cnt = 0 then
                aux 0 (One x :: acc) t
            else
                aux 0 (Many (cnt + 1, x) :: acc) t in
    List.rev (aux 0 [] l);;

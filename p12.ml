(*
 * Decode a run-length encoded list. 
 *
 * decode [Many (4,"a"); One "b"; Many (2,"c"); Many (2,"a"); One "d"; Many (4,"e")];;
 * ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"]
 *  
 *)

type 'a rle =
    | One of 'a
    | Many of int * 'a;;

let rec decode = function
    | [] -> []
    | h :: r -> match h with
      | One e -> e :: (decode r)
      | Many (cnt, e) ->
              let rec add cnt e = if cnt = 0 then
                  []
              else
                  e :: (add (cnt - 1) e) in
              add cnt e @ decode r;;

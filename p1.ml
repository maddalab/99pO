let rec last = function 
    [] -> raise Not_found
    | [e] -> e
    | h :: r -> last r;;

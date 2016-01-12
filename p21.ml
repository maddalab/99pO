(* Create a list containing all integers within a given range *)

let rec range s e = 
    if s > e then
        if e = s then
            [s]
        else
            s :: (range (s - 1) e)
    else 
        if s = e then
            [s]
        else
            s :: (range (s + 1) e);;

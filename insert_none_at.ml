let rec insert_at element n l = match l with
                                   | [] -> [element]
                                   | h :: t -> if n = 0 then element :: h :: t
                                               else h :: insert_at element (n - 1) t;;

let insert_none_at index l = match l with
                                  | [] -> ["None"]
                                  | h :: t -> insert_at "None" index l;;

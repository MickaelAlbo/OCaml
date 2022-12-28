type 'a binary_tree = 
                     | Empty
                     | Node of 'a * 'a binary_tree * 'a binary_tree;;

let rec add_to_search_tree t x = match t with
                                     | Empty -> Node (x, Empty, Empty)
                                     | Node(k, left, right) ->
                                       if x < k then Node (k, add_to_search_tree left x, right)
                                       else Node (k, left, add_to_search_tree right x);;

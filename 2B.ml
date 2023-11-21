
let rec extractMin list =
  match list with
  | [] -> failwith "Need Elements in the list" (*in case theres an empty list print an error message*)
  | [x] -> (x, []) (*in case there is only 1 element in the list*)
  | x :: xs ->
  let (smallest, moreList) = extractMin xs in
  if x < smallest then (x,smallest :: moreList) else (smallest, x :: moreList)
;;
 
let rec extractSort list =
  match list with
  | [] -> []
  | x :: xs -> let (smallest, moreList) = extractMin list in
  smallest :: extractSort moreList
;;


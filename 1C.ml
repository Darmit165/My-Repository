let rec foldRight p xs =
  match xs with
  | [] -> true                      (* If the list is empty, all predicates are true *)
  | x :: xs -> p x && foldRight p xs (* Use '&&' to combine results *)

;;

let allF p xs = foldRight p xs ;;
let isEven n = n mod 2 = 0;;
allF isEven [4; 2; 4; 8];;

(* My two functions all and allF behave in different ways but both end up with the same results when presented with the same input*)
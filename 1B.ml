
let rec foldRight p xs =
  match xs with
  | [] -> false  (* If the list is empty, no element satisfies the predicate *)
  | x :: xs -> p x || foldRight p xs (* Use '||' to separate results and test each one *)

;;

let exists p xs = foldRight p xs ;;
let isEven n = n mod 2 = 0;; 
exists isEven [4; 2; 4; 8];;
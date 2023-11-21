let rec all p xs =
  match xs with
  | [] -> true                (* If the list is empty, all predicates are true *)
  | x::xs -> p x && all p xs  (* Use '&&' to combine results *)

  
;;
let isEven n = n mod 2 = 0;;
all isEven [4; 2; 4; 8];;
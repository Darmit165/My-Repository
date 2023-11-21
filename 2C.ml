(* Start with extractSort [2;3;1]
The function uses match with "list" = [2; 3; 1]
Checks list with the first case and moves over to the second one as its not empty
It sets "x" to 2 and "xs" to [3; 1]
It then calls extractMin on [2;3;1]
Checks list with the first case, moves over to the second one as its not empty and moves over to the third one as the list has more than 1 element
It sets "x" to 2 and "xs" to [3; 1]
The function is called recursively with "xs" = [3; 1]
It then works on [3; 1] to find the smallest value
This repeats until it reaches the base case with 1 element and matches the second case and returns (1,[])
Then as its recursive goes back to previous calls 
It starts with (1,[]) and checks if x (3) is less than smallest (1) which its not so returns (1,[3])
It does the same for 2 and returns its final result (1,[2;3]) after checking one final time
This then returns back to extractSort which then splits 1 from the list and calls extractMin again on [2;3] 
This recursively calls until extractSort is left with a sorted list [1;2;3] *)
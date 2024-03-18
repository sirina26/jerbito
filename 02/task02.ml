let rec sum ll = match ll with
 | [] -> 0
 | x :: xs -> x + sum xs;;
(* Rechercher un élément
 *)
let rec contient ll a = match ll with
| [] -> false
| x :: xs when  x = a -> true 
| _ :: xs -> contient xs a;;

(* Question 1 *)
let rec inv

List.hd(List.rev[1;2;3;4;5]);;
(* Question 2 *)

let swap ma_liste = match ma_liste with
| [] -> [] 
| t :: y :: test -> y :: t :: test;;

(* appelle fonction *)
let result = swap[1; 2; 3; 4; 5];;


[1; 2; 3; 4; 5];;
(* Question 3 *)
(* /////////// *)
let repeat element n =
  if n < 0 then
    []
  else
    List.init n (fun _ -> element)

(* Question 4 *)
let range_i i j =
if i > j then
  []
else
  List.init (j - i + 1) (fun index -> i + index)
(* Question 5 *)
let decr_list lst =
List.map (fun x -> x - 1) lst
(* Question 6 *)
(* rev : 'a list -> 'a list *)

let rec rev lst =
let rec rev_aux acc = function
  | [] -> acc
  | x :: xs -> rev_aux (x :: acc) xs
in
rev_aux [] lst

(* Mem : 'a -> 'a list -> bool *)
let rec mem elem lst =
match lst with
| [] -> false
| x :: xs -> elem = x || mem elem xs

(* Append : 'a list -> 'a list -> 'a list *)
let rec append lst1 lst2 =
match lst1 with
| [] -> lst2
| x :: xs -> x :: append xs lst2

(* Question 7 *)
(* Question 13 *)
Definir decr_list : int list -> int list
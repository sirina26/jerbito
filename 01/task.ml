(* 1 *)

let char_succc c =
  if c = '\255' then
  c |> int_of_char |>succ |> char_of_int
  else
 '\000'

(* 2 *)

let string_cons c s =
    String.make 1 c ^ s;;
    
(* 3 Réécrire cette expression*)
"81" |> int_of_string |> float_of_int |> sqrt |> int_of_float;;

int_of_float (sqrt (float_of_int (int_of_string "81")));;

let a = int_of_string "81" in
let b = float_of_int a in 
let c = sqrt b in 
let d = int_of_float c in
d;;

(* 4 *)
let cr ="cream" in
let i_u_we = 
let sr = string_cons 's' cr in 
  "I "  ^ sr ^ ", you " ^ sr ^", we all " ^ sr  in 
  i_u_we ^ " for ice " ^ cr;;

(* Fonctions récursives *)
(* 1 *)

let char_succ c =
  if c = '\255' then
    c
  else
    char_of_int (int_of_char c + 1)

let rec string_cons c s =
  if String.length s = 0 then
    String.make 1 c
  else
    String.make 1 c ^ s

let rec char_range lo hi =
  if lo > hi then
    ""
  else
    string_cons lo (char_range (char_succ lo) hi);;

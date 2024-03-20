# Listes &mdash; Travaux Pratiques

## Manipulation de listes

Pensez à écrire quelques tests pour vérifier que votre solution fonctionne et vous familiariser avec la syntaxe des listes.

### Question 1

En utilisant `List.rev`, écrire la fonction `last : 'a list -> 'a` qui retourne le dernier élément d'une liste.

### Question 2

Définir la fonction `swap : 'a list -> 'a list` qui échange les deux premiers éléments d'une liste. Les listes de moins de deux éléments sont inchangés.

Par exemple,
```ocaml
swap [1; 2; 3]
(* donne [2; 1; 3] *)
```

### Question 3

En utilisant `List.init`, définir la fonction `repeat : 'a -> int -> 'a list` qui retourne une liste contenant n fois l'élément donné en entrée. Si n est inférieure à 0, elle retourne la liste vide.

Par exemple,
```ocaml
repeat "Bonjour" 3
(* retourne ["Bonjour"; "Bonjour"; "Bonjour" ] *)
```

### Question 4

En utilisant `List.init`, définir la fonction `range_i : int -> int -> int list` tel que `range_i i j` retourne la liste `[i; i+1; ..; j]`.

Si i > j alors `range i j` donne la liste vide.

Par exemple,
```ocaml
range_i 3 6
(* donne [3; 4; 5; 6] *)
```

## Fonctions récursives sur les listes

### Question 5

Définir la fonction `decr_list : int list -> int list` qui retire 1 à chaque élément de la liste en entrée.

### Question 6

Redéfinir ĺes fonctions de la librairie standard (sans les utiliser évidemment) :

- `rev : 'a list -> 'a list`

- `mem : 'a -> 'a list -> bool`

- `append : 'a list -> 'a list -> 'a list`

Ainsi que la fonction `repeat` de la question 3, sans utiliser `List.init`.

### Question 7

Définir la fonction `flat : 'a list list -> 'a list` qui applanit d’un niveau une liste de listes sans utiliser la fonction `List.flatten`.

Par exemple,
```ocaml
flat [[1; 2]; [3; 4]]
(* donne [1; 2; 3; 4] *)
```

### Question 8

Définir la fonction de signature `interpose : 'a -> 'a list -> 'a list` tel que `interpose z ll` intercale `z` entre les éléments de `ll`. Le premier et le dernier éléments sont le premier et le dernier éléments de `ll`.

Par exemple,
```ocaml
interpose 1 []
(* donne [] *)

interpose 0 [5]
(* donne [5] *)

interpose 0 [1;2;3]
(* donne [1;0;2;0;3] *)
```

### Question 9

Définir la fonction de `stutter : 'a list -> 'a list` qui double la taille d’une liste en dupliquant chacun de ses éléments.

Par exemple :

```ocaml
stutter []
(* donne [] *)

stutter [1;2;3]
(* donne [1;1;2;2;3;3] *)
```

### Question 10

Définir la fonction de signature `add_list : int list -> int list -> int list` qui somme les deux listes d'entrée terme à terme. Lorsque xs et ys ne sont pas de même longueur, on conserve tels quels les éléments en plus.

Par exemple:
```ocaml
add_list [] [1;2;3]
(* donne [1;2;3] *)

add_list [1;2;3] []
(* donne [1;2;3] *)

add_list [1;2;3] [4;5;6]
(* donne [5;7;9] *)

add_list [1;2;3] [4;5])
(* donne [5;7;3] *)
```

### Question 11
Définir la fonction `remove_dup : 'a list -> 'a list` qui retire les duplicatas de la liste. On supposera la liste triée.

Par exemple,

```ocaml
remove_dup [1; 2; 2; 3]
```
retourne
```ocaml
[1; 2; 3]
```

### Question 12

Définir la fonction `is_sorted : int list -> bool` qui retourne `true` si la liste en entrée est triée.

Par exemple,
```ocaml
is_sorted []
(* donne true *)

is_sorted [1; 1; 2; 3]
(* donne true *)

is_sorted [1; 3; 2]
(* donne false *)
```

## Itérateurs

### Question 13

Redéfinir `decr_list : int list -> int list` en utilisant un itérateur.

### Question 14

Définir une fonction `only_less : int -> int list -> int list` en utilisant `List.filter` telle que `only_less n ll` retourne la liste `ll` dont les valeurs supérieurs ou égales à n ont été retirées.

### Question 15

Redéfinir les fonctions de la librairie standard `rev` et `append` en utilsant
des itérateurs.

### Question 16

Définir une fonction `max : int list -> int` qui retourne le maximum d'une liste. Utiliser `failwith "Liste vide"` pour le cas de la liste vide.

### Question 17

Redéfinir `is_sorted : int list -> bool`  avec un itérateur.

### Question 18

Redéfinir `remove_dup : 'a list -> 'a list` avec un itérateur.

let list_unit x = [x];;
list_unit 42;;

type 'a queue = {
  front : 'a list;
  rear_rev : 'a list
};;
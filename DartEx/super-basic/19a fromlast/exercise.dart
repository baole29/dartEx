// --- Directions
// Given a linked list, return the element n spaces
// from the last node in the list.  Do not call the 'size'
// method of the linked list.  Assume that n will always
// be less than the length of the list.
// --- Examples
//    const list = new List();
//    list.insertLast('a');
//    list.insertLast('b');
//    list.insertLast('c');
//    list.insertLast('d');
//    fromLast(list, 2).data // 'b'

import 'linked_list.dart';

Node fromLast_cheating(LinkedList list, int n) {
  
}

Node fromLast(LinkedList list, int n) {
  LinkedList lists = list;
  while(n>0){
    lists.removeLast();
    n--;
  }
  return lists.getLast();
}

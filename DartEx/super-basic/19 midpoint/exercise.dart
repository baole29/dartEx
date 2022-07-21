// --- Directions
// Return the 'middle' node of a linked list.
// If the list has an even number of elements, return
// the node at the end of the first half of the list.
// *Do not* use a counter variable, *do not* retrieve
// the size of the list, and only iterate
// through the list one time.
// --- Example
//   const l = new LinkedList();
//   l.insertLast('a')
//   l.insertLast('b')
//   l.insertLast('c')
//   midpoint(l); // returns { data: 'b' }

import 'linked_list.dart';

Node midpoint(LinkedList list) {
  Node slowNode = list.head;
  Node fastNode = slowNode.next;
  while (fastNode != null) {
    if(fastNode.next==null) return slowNode;
    slowNode = slowNode.next;
    fastNode = fastNode.next.next;
  }
  return slowNode;
}
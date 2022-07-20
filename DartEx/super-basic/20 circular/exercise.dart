// --- Directions
// Given a linked list, return true if the list
// is circular, false if it is not.
// --- Examples
//   const l = new List();
//   const a = new Node('a');
//   const b = new Node('b');
//   const c = new Node('c');
//   l.head = a;
//   a.next = b;
//   b.next = c;
//   c.next = b;
//   circular(l) // true

import 'linked_list.dart';

bool circular(LinkedList list) {
  bool result = false;
  Node nextNode = list.head;
  List<Node> listNode= [];
  while(!result){
    listNode.add(nextNode);
    nextNode = nextNode.next;
    for(int i=0; i<listNode.length;i++){
      if(nextNode == listNode[i])
        result = true;
      if(nextNode ==null)
        return false;
    }
  }
  return result;
}

void main(){
  var l = new LinkedList();
    var a = new Node(11);
    var b = new Node(22);
    var c = new Node(33);

    l.head = a;
    a.next = b;
    b.next = c;
    c.next = null;
    print(circular(l));
}

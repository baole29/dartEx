// --- Directions
// Implement a Queue datastructure using two stacks.
// *Do not* create an array inside of the 'Queue' class.
// Queue should implement the methods 'add', 'remove', and 'peek'.
// For a reminder on what each method does, look back
// at the Queue exercise.
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.add(2);
//     q.peek();  // returns 1
//     q.remove(); // returns 1
//     q.remove(); // returns 2

import 'stack.dart';

class Queue {
  Stack _stackIn = Stack();
  Stack _stackOut = Stack();

  void add(dynamic value){
    _stackIn.push(value);
  }

  dynamic remove(){
    if(_stackOut.peek()==null){
      while(_stackIn.peek()!=null){
        _stackOut.push(_stackIn.pop());
      }
    }
    return _stackOut.pop();
  }
}

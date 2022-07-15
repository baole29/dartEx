// --- Description
// Create a _queue data structure.  The _queue
// should be a class with methods 'add' and 'remove'.
// Adding to the _queue should store an element until
// it is removed
// --- Examples
//     const q = new _queue();
//     q.add(1);
//     q.remove(); // returns 1;


class Queue {
  var _queue = List.generate(100,((index) => index));
 int _front = -1;
  int _rear = -1;

  void add(dynamic value){
    if(_front == -1)
      _front = 0;
    _rear +=1;
    _queue[_rear] = value;
  }

  dynamic remove(){
    if(_front>_rear||_front==-1)
      return null;
    final result = _queue[_front];
    _front=_front+1;
    return result;
  }

}

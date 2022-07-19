// --- Directions
// Implement a 'peek' method in this Queue class.
// Peek should return the last element (the next
// one to be returned) from the queue *without*
// removing it.

class Queue {
  var _queue = List<dynamic>.generate(100, ((index) => index));
  int _front = -1;
  int _rear = -1;

  void add(dynamic value) {
    if (_front == -1) _front = 0;
    _rear += 1;
    if(_rear<_queue.length) _queue[_rear] = value ;
  }

  dynamic remove() {
    if (_front > _rear || _front == -1) return null;
    final result = _queue[_front];
    _front = _front + 1;
    return result;
  }

dynamic peek() {
    return _front ==-1|| _front>_rear?null: _queue[_front];
  }
}

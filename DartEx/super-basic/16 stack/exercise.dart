// --- Directions
// Create a stack data structure.  The stack
// should be a class with methods 'push', 'pop', and
// 'peek'.  Adding an element to the stack should
// store it until it is removed.
// --- Examples
//   const s = new Stack();
//   s.push(1);
//   s.push(2);
//   s.pop(); // returns 2
//   s.pop(); // returns 1

class Stack {
  var _stack = List<dynamic>.generate(100,((index) => index));
  int _top = -1;
  int _bottom = -1;


  void push(dynamic value){
    if(_top==_stack.length-1){
    }
    else{
      _top+=1;
      _stack[_top] = value;
    }
  }

  dynamic pop(){
    if(_top==_bottom)
      return null;
    dynamic result = _stack[_top];
    _top-=1;
    return result;
  }

  dynamic peek(){
    return _top!=-1?_stack[_top]:null;
  }
}


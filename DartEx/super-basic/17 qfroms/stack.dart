class Stack {
  var _stack = List.generate(100,((index) => index));
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
    return _stack[_top];
  }
}
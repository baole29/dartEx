// --- Directions
// Create an 'eventing' library out of the
// Events class.  The Events class should
// have methods 'on', 'trigger', and 'off'.

library eventing;

class Events {
  Map<String, List<Function>> handlers = {};

  // Register an event handler
  void on(String eventName, Function callback) {
    if(handlers.containsKey(eventName)){
    handlers[eventName].add(callback);
    } else {
      handlers[eventName] = [callback];
    }
  }

  // Trigger all callbacks associated
  // with a given eventName
  void trigger(String eventName) {
    for(var fn in handlers[eventName]){
      fn();
    }
  }

  // Remove all event handlers associated
  // with the given eventName
  void off(String eventName) {
    handlers[eventName] = [];
  }
}


class CallCounter {
  int count = 0;

  void call() {
    count++;
  }
}
void main(){
  var events = new Events();

    var cb1 = CallCounter();
    var cb2 = CallCounter();

    events.on('click', cb1.call);
    events.on('click', cb2.call);
    events.trigger('click');
    print(cb1.count);
    print(cb2.count);
}
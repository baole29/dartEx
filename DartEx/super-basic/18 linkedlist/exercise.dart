// --- Directions
// Implement classes Node and Linked Lists
// See 'directions' document

class Node {
  int data;
  Node next;

  Node(this.data, [this.next = null]);
}

class LinkedList extends Iterable {
  Node head;

  void insertFirst(int data) {
    head = Node(data,head);
  }

  void insertLast(int data) {
    
    Node first = head;
    while(head != null){
      if(head.next==null){
        head.next = Node(data);
        break;
      }
      head = head.next;
    }
    head = first;
    if(size()==0){
      insertFirst(data);
    };
  }

  int size() {
    Node nextNode = head;
    int count = 0;
    while(nextNode != null){
      count++;
      nextNode = nextNode.next;
    }
    return count;
  }

  Node getFirst() {
    return head;
  }

  Node getAt(int index) {
    if(index<0||index >= size()) return null;
    Node result = head, nextNode = head;
    int count = 0;
    while(nextNode != null){
      count++;
      if(count-1==index) result = nextNode;
      nextNode = nextNode.next;
    }
    return result;
  }

  void removeFirst() {
    head = head.next;
  }

  Node getLast() {
    Node result,nextNode = head;
    while(nextNode != null){
      if(nextNode.next==null) return nextNode;
      nextNode = nextNode.next;
    }
    return result;
  }

  void removeAt(index) {
    
    Node first = head;
    if(size()==0||index>=size()) {
      
    }
    else if(index==0){
      head = head.next;
    }
    else{
      int count = 1;
    while(head != null){
      if(count==index){
        Node nodeNext = head.next.next;
        head.next = nodeNext;
        break;
      }
      count++;
      head = head.next;
    }
    head = first;
    }
    
  }

  void insertAt(int data, int index) {
    Node nextNode = head, previousNode = head;
    if(size()==0||index==0){
      insertFirst(data);
    }else if(index>=size()){
      insertLast(data);
    }
    else{
      while(index>0&&index<size()){
      previousNode = nextNode;
      nextNode = nextNode.next;
      index--;
    }
    
        Node indexNode = Node(data,nextNode);
        previousNode.next = indexNode;
    }
      
    

  }

  void removeLast() {
    
    Node toDelete = head, secondLastNode = head;
    if(size()==0){

    }
    else{
      while(toDelete.next != null){
      secondLastNode = toDelete;
        toDelete  = toDelete.next;
      }
    }
    
    if(toDelete==head)
      head = null;
    else
      secondLastNode.next = null;  
    }

  void clear() {
    head = null;
  }

  forEach(Function(Node node) fn) {
    Node nextNode = head;
    while (nextNode != null) {
      fn(nextNode);
      nextNode = nextNode.next;
    }
  }

  @override
  Iterator get iterator => LinkedListIterator(this);
}

class LinkedListIterator implements Iterator {
  LinkedList linkedList = LinkedList();

  LinkedListIterator(LinkedList linkedList){
    this.linkedList = linkedList;
  }
  
  int position  = -1;


  @override
  get current => linkedList.getAt(position);
  
  @override
  bool moveNext() {
    position ++;
    return (position <linkedList.size());
  }


}
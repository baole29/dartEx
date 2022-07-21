<<<<<<< HEAD
=======
// --- Directions
// 1) Implement the Node class to create
// a binary search tree.  The constructor
// should initialize values 'data', 'left',
// and 'right'.
// 2) Implement the 'insert' method for the
// Node class.  Insert should accept an argument
// 'data', then create an insert a new node
// at the appropriate location in the tree.
// 3) Implement the 'contains' method for the Node
// class.  Contains should accept a 'data' argument
// and return the Node in the tree with the same value.

import 'package:test/expect.dart';

class Node {
  int data;
  Node left, right;
  Node(this.data, [this.left = null, this.right = null]);
  void insert(int data) {
    Node root = this;
    
      Node parent, currentNode = root;
      while (true) {
        parent = currentNode;
        if (data > parent.data) {
          currentNode = currentNode.right;
          if (currentNode == null) {
            parent.right = Node(data);
            return;
          }
        } else {
          currentNode = currentNode.left;
          if (currentNode == null) {
            parent.left = Node(data);
            return;
          }
        }
      
    }
  }

  Node contains(int data) {
    Node currentNode = this;
    while(currentNode!=null&&currentNode.data!=data){
      if(data>currentNode.data)
        currentNode = currentNode.right;
      else
        currentNode = currentNode.left;
    }
    return currentNode == this? null:currentNode;
  }
}

void main() {
  var node = new Node(10);
  node.insert(5);
  node.insert(15);
  node.insert(17);
  print(node.contains(18));
}
>>>>>>> cf90d9f6351f72342be9e1e6f4a79544eaca94f7

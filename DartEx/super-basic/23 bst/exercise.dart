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

class Node {
  int data;
  Node left, right;
  Node(this.data);
  void insert(int data) {
    Node root = this;
    Node parent;
    Node currentNode = root;
    if (root != null) {
      while (currentNode != null) {
        parent = currentNode;
        if (data > currentNode.data) {
          currentNode = currentNode.right;
        } else {
          currentNode = currentNode.left;
        }
      }
      if (data > parent.data) {
        p = Node(data);
      } else {
        currentNode = Node(data);
      }
    } else {
      if (data > this.data) {
        right = Node(data);
      } else {
        left = Node(data);
      }
    }
  }
  Node contains(int data){}
}
 
void main(){
  var node = new Node(10);
    node.insert(5);
    node.insert(15);
    node.insert(17);
}
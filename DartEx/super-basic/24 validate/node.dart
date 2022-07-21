class Node {
  int data;
  Node left;
  Node right;
  Node(this.data,[this.left=null,]);

  _addLeaf(Node node, int data) {
    
      Node current = node;
      print(node);
      if(current==null){
        current = Node(data);
      }else{
        current.insert(data);
      }
    }


  void insert(int data) {
    Node root = this;
      if(data>root.data)
        root._addLeaf(root.right, data);
      else{
        root._addLeaf(root.left, data);
      }

  }
}

void main(){
  var n = Node(10);
    n.insert(5);
    n.insert(15);
    n.insert(0);
    n.insert(20);
    print(n.left);
}
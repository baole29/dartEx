class Node {
  int data;
  Node left;
  Node right;
  Node(this.data,[this.left=null,this.right=null]);

  _addLeaf(Node node, int data) {
      if(this==null){
        Node(data);
      }
      else{
        if(node.data>data){
          node.left==null?
          node.left = Node(data):
          node.left.insert(data);
        }else{
          node.right==null?
          node.right = Node(data):
          node.right.insert(data);
        }
      } 
    }

  void insert(int data) {
    _addLeaf(this, data);
  }
}
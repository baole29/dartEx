// --- Directions
// 1) Create a node class.  The constructor
// should accept an argument that gets assigned
// to the data property and initialize an
// empty array for storing children. The node
// class should have methods 'add' and 'remove'.
// 2) Create a tree class. The tree constructor
// should initialize a 'root' property to null.
// 3) Implement 'traverseBF' and 'traverseDF'
// on the tree class.  Each method should accept a
// function that gets called with each element in the tree

class Node {
  dynamic data;
  List<Node> children = [];
  Node(this.data, [children]){
    if(children!=null){
      this.children = children;
    }else{
      this.children = [];
    }
  }


  void add(dynamic data){
    children.add(Node(data));
  }

  dynamic remove(dynamic data){
    for(var node in children){
      if(node.data == data)
        return children.remove(node);
    }
  }

} 

class Tree {
  Node root;

  _traverseBF(Node baseNode, Function(Node) fn) {
    fn(baseNode);

    
  }

  _traverseDF(Node baseNode, Function(Node) fn) {
    
  }

  traverseBreadthFirst(Function(Node) fn) {
    List<Node> listNodeIn = [root];
    List<Node> listNodeOut = [];
    
      _traverseBF(listNodeIn.first, (p0) => fn(p0));
  }

  traverseDepthFirst(Function(Node) fn) {
    
  }
}

void main(){
  List<String> letters = [];
      var t = Tree();
      t.root = Node('a');
      t.root.add('b');
      t.root.add('c');
      t.root.children[0].add('d');

      t.traverseBreadthFirst((node) {
        letters.add(node.data);
      });
      print(letters);
     
}
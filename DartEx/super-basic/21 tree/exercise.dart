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
  Node(this.data, [children]) {
    if (children != null) {
      this.children = children;
    } else {
      this.children = [];
    }
  }

  void add(dynamic data) {
    children.add(Node(data));
  }

  dynamic remove(dynamic data) {
    for (var node in children) {
      if (node.data == data) return children.remove(node);
    }
  }
}

class Tree {
  Node root;

  _traverseBF(Node baseNode, Function(Node) fn) {
    List<Node> listNodeIn = [root];
    List<Node> listNodeOut = [];

    while (listNodeIn.length != 0) {
      if (listNodeIn.first.children != null) {
        for (int i = 0; i < listNodeIn.first.children.length; i++) {
          listNodeIn.add(listNodeIn.first.children[i]);
        }
      }
      listNodeOut.add(listNodeIn.removeAt(0));
    }

    for (int i = 0; i < listNodeOut.length; i++) {
      fn(listNodeOut[i]);
    }
  }

  _traverseDF(Node baseNode, Function(Node) fn) {
    if (baseNode == null) return;
      fn(baseNode);
      int childrenLength = baseNode.children.length;
      if(childrenLength==0) return;
      for(int i = 0; i<childrenLength;i++)
        _traverseDF(baseNode.children[i], fn);
    
  }

  traverseBreadthFirst(Function(Node) fn) {
    _traverseBF(root, (p0) => fn(p0));
  }

  traverseDepthFirst(Function(Node) fn) {
    _traverseDF(root, (p0) => fn(p0));
  }
}

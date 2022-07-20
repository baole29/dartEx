class Node {
  dynamic data;
  int level;
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
// --- Directions
// --- Directions
// Given a node, validate the binary search tree,
// ensuring that every node's left hand child is
// less than the parent node's value, and that
// every node's right hand child is greater than
// the parent


import 'node.dart';

_traverseBottomUp(Node node, Function(Node) fn) {
  if (node == null) {
    return;
  }
  _traverseBottomUp(node.left, fn);
  fn(node);
  _traverseBottomUp(node.right, fn);
}

bool validate(Node node) {
  List<int> list = [];
  _traverseBottomUp(node, (p0){
    list.add(p0.data);
  });
  print(list);
  return isSorted(list);
}

bool isSorted(List<int> sequence) {
  for (int i = 1; i < sequence.length-1; i++) {
    if (sequence[i - 1] > sequence[i]) {
      return false;
    }
  }
  return true;
}

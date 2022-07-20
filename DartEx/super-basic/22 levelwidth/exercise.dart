// --- Directions
// Given the root node of a tree, return
// an array where each element is the width
// of the tree at each level.
// --- Example
// Given:
//     0
//   / |  \
// 1   2   3
// |       |
// 4       5
// Answer: [1, 3, 2]

import 'node.dart';

_traverseBF(int level, Node baseNode, Function(Node, int) fn) {
  if (baseNode == null) {
    return;
  }
  List listNode = [baseNode];
  while (listNode.isNotEmpty) {
    baseNode = listNode[0];
    int childrenLength = baseNode.children.length;
    level = baseNode.level;
    fn(listNode.removeAt(0), level);
    for (int i = 0; i < childrenLength; i++) {
      baseNode.children[i].level = baseNode.level + 1;
      listNode.add(baseNode.children[i]);
    }
  }
}

List<int> levelWidth(Node root) {
  root.level = 1;
  List<int> widthList = [];
  List<int> levels = [];
  if (root != null) {}
  _traverseBF(1, root, (node, level) {
    levels.add(level);
    // print("_traverseBF fn ${node.data}, $level");
    // each level has at least one node with previous level
    // levels grow from 1 to max level
  });

  var mapInt = levels.toSet().map((e) => e);
  for(int i =0; i<mapInt.length;i++){
    widthList.add(levels.where((element) => element == mapInt.elementAt(i)).length);
  }
  return widthList;
}

void main() {
  var root = new Node(0);
  root.add(1);
  root.add(2);
  root.add(3);
  root.children[0].add(4);
  root.children[2].add(5);
  print(levelWidth(root));
}

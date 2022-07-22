/// --- Directions
// Write a function that accepts an integer N
// and returns a NxN spiral matrix.
// --- Examples
//   matrix(2)
//     [[1, 2],     22    passes 1 + 1
//     [4, 3]]      11
//   matrix(3)
//     [[1, 2, 3],  333   passes 1 + 2 * 2
//     [8, 9, 4],   112
//     [7, 6, 5]]   222
//  matrix(4)
//     [[1,   2,  3, 4],  4444  passes 1 + 3 * 2
//     [12, 13, 14, 5],   2223
//     [11, 16, 15, 6],   2113
//     [10,  9,  8, 7]]   3333

enum Direction {
  right,
  down,
  left,
  up,
}

class Matrix2d {
 late int size;
 
}

List<List<int>> matrix(int size) {
  int top = 0, bottom = size-1, left = 0, right = size-1;
  int value = 1;
  List<List<int>> resultMatrix = 
    List.generate(size, (i) => List.generate(size, (i) => i,), growable: false);

  while(true){
    if(left>right)
      break;
      //print top
    for(int i = left; i<=right;i++){
      resultMatrix[top][i] = value++;
    }
    top++;

    if(top>bottom)
      break;
      //print right
    for(int i =top; i<=bottom;i++){
      resultMatrix[i][right] = value++;
    }
    right--;

    if(left>right)
      break;
      //print bottom
    for(int i =right; i>=left;i--){
      resultMatrix[bottom][i] = value++;
    }
    bottom--;

    if(top>bottom)
      break;
      //print left
    for(int i =bottom; i>=top;i--){
      resultMatrix[i][left] = value++;
    }
    left++;
  }

return resultMatrix;
}


void main(){
  int size = 4;
  for(int i = 0; i<size;i++){
    print(matrix(size)[i]);
  }
}
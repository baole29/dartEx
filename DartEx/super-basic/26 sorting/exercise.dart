// --- Directions
// Implement bubbleSort, selectionSort, and mergeSort

List<int> bubbleSort(List<int> arr) {
  List<int> sorted = arr;
  for (int i = 0; i < sorted.length; i++) {
    for (int j = i; j < sorted.length; j++) {
      if (arr[j] < sorted[i]) {
        int temp = sorted[j];
        sorted[j] = sorted[i];
        sorted[i] = temp;
      }
    }
  }
  return sorted;
}

List<int> selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIx = i;
    for (int j = i; j < arr.length; j++) {
      if (arr[minIx] > arr[j]) {
        minIx = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIx];
    arr[minIx] = temp;
  }
  return arr;
}

List<int> mergeSort(List<int> arr) {
  if(arr.length==1) return arr;
  List<int> leftArr = arr.getRange(0, (arr.length)~/2).toList();
  List<int> rightArr = arr.getRange((arr.length)~/2, arr.length).toList();
  return merge(mergeSort(leftArr),mergeSort(rightArr));
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;
  while (i<left.length || j<right.length) {
    if(i>=left.length){
      if(!result.contains(right.elementAt(j)))
        result.add(right.elementAt(j));
      j++;
      continue;
    }
    if(j>=right.length){
      if(!result.contains(left.elementAt(i)))
        result.add(left.elementAt(i));
      i++;
      continue;
    }
      
    if(left[i]<right[j])
      result.add(left[i++]);
    else
      result.add(right[j++]);
  }
  return result;
}

void main() {
  var list = [1, 2, 4, 2, 5, 5, 8, 0, -1];
  print(merge([1, 2, 8], [4, 5, 6]));
  print(mergeSort(list));
}

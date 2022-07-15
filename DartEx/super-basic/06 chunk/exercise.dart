// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

List<List<int>> chunk(List<int> array, size) {
  List<List<int>> listInt =[];
  int start = 0;
  int length = array.length;
  int defaultSize = size;
 while(length>0){
  if(length<=size){
      listInt.add(array.sublist(start,array.length));
      break;
    }
    listInt.add(array.sublist(start,size));
    start = start + defaultSize;
    size = defaultSize + start;
 }
  
  return listInt;
}

void main(){
  print(chunk([1,2,3,4,5,6,7,8,9,10], 2));
}
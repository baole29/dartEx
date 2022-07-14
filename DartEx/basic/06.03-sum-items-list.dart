void main(){
  final listInt = [1, 3, 5, 7, 9];
  print(sum(listInt));
}

int sum(List<int> list){
  int sum = 0;
  for(int i = 0; i<list.length;i++){
    sum+=list[i];
  }
  return sum;
}
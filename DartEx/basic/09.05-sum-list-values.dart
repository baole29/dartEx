void main(){
  List<double> list1 = [1,2,3,4];
  List<double> list2 = [1.2,3.4,4.5];
  print(sum(list1));
  print(sum(list2));
}



double sum(List<double> list){
  double sum =  0;
  list.forEach((element) { 
    sum+=element;
  });
  return sum;
}
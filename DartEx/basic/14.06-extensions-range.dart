
void main() {
  // for (var i in 2.rangeTo(5)) {
  //   print(i);
  // }
   print(1.rangeTo(5));
  // output: [1, 2, 3, 4, 5]
}

extension rangeToNumber on int{
  List<int> rangeTo(int other){
    List<int> list =[];
    if(other<this){
      return [];
    }
    for(int i =this; i<=other;i++){
      list.add(i);
    }
    return list; 
  }
}
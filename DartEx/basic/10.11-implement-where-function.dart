List where(List list,Function function ){
  List listResult = [];
  listResult = function(list);
  return listResult;
}

List getOddNumber(List list){
List listResult = [];
  list.forEach((element) {
    if(element%2!=0)
      listResult.add(element);
  });


  return listResult;
}

void main(){
  List list = [1,2,3,4];

  print(where(list, getOddNumber));
}
dynamic firstWhere(List list,Function function, {required Function orElse} ){
  
  return function(list,5)??notFound();
}

dynamic findNumber(List list, int find){
  var res;
  list.forEach((element) {
    if(element==find){
      res = element;
    }else{
      res = null;
    }  
  });
  return res;
}

int notFound(){
  return -1;
}


void main(){
  List list = [1,2,3,4];

  print(firstWhere(list, findNumber,orElse:notFound));
}
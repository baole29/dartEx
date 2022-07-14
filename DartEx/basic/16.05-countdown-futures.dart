Future<void> countdown(int n) async{
  do{
    await Future.delayed(Duration(seconds: 1));n==0?print("Done"):print(n);
    n--;
  }while(n>=0);
  
}

void main(){
  countdown(5);
}
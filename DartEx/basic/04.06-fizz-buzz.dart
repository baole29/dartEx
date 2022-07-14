void main(){
  for(int i=1; i<=15;i++){
    if(divisibleBy3(i)&&divisibleBy5(i)){
      print('fizz buzz');
    }else if(divisibleBy3(i)){
      print('fizz');
    }else if(divisibleBy5(i)){
      print('buzz');
    }else{
      print(i);
    }
  }
}


bool divisibleBy3(int number){
  if(number%3==0)
    return true;
  return false;
}
bool divisibleBy5(int number){
  if(number%5==0)
    return true;
  return false;
}
void main(){
  int netSalary=200, expenses=300;

  if(netSalary>expenses){
    print('You have saved '+ (netSalary - expenses).toString() +' this month');
  }else if(netSalary<expenses){
    print('You have lost '+ (expenses - netSalary).toString() +' this month');
  }else{
    print("Your balance hasn't changed");
  }
}
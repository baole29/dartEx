
void main(){
  const pizzaPrices = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};

double sum = 0;
 const order = ['pizza', 'pepperoni'];
order.forEach((element){
  if(pizzaPrices.containsKey(element)){
    sum = sum + pizzaPrices[element]!;
  }else{
    print(element +' is not on the menu');
  }
});
print(sum);
}
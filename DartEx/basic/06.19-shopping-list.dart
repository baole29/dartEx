void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;
  //var shoppingList = {if(bananas>0) 'bananas':bananas,if(apples>0) 'ap':bananas  ,...grains};
var shoppingList = {if(bananas>0) 'bananas':bananas,if(apples>0) 'ap':bananas  ,...grains};
  print(shoppingList);
  // prints {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
}
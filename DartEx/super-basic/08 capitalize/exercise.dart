// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

String capitalize(String input) {
  List<String> result = input.split('');
  result[0] = result[0].toUpperCase();
  for(int i = 1; i <result.length;i++){
    if(input[i]==" "){
      result[i+1] = result[i+1].toUpperCase();
    }
  }
  return result.join();
}


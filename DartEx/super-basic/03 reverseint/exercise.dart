// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

int reverseInt(int n) {
  String input;
 n>0 ?  input=n.toString() : input=(-n).toString();
  String result="";
  for(var i = 0; i<input.length;i++){
    result = result.padLeft(i+1,input[i]);
  }
  return n>0 ? int.parse(result) : -int.parse(result);
}

String reverse(String input) {
  return input.split('').reversed.join();
}

void main(){
  print(reverseInt(-54));
}
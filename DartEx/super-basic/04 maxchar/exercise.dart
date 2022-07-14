
// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

String maxChar(String input) {
  
}

void main(){
  String input = "baole";
  //final list = <String>["two", 'three'];
 input.split('').sort(((a, b) => a.codeUnitAt(0).compareTo(b.codeUnitAt(0))));
 print(input);
 print('b'.codeUnitAt(0));
}
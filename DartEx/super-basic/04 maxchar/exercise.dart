// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

String maxChar(String input) {
  List<String> inputSplit = input.split('');
  var mapString = inputSplit.toSet().map((e) => e);
  inputSplit.sort();
  var length;
  int max = 0;
  String result;
  for (int i = 0; i < mapString.length; i++) {
    // calculate lenght of String element same
    length =
        inputSplit.where((element) => element == mapString.elementAt(i)).length;
    if (max < length) {
      max = length;
      result = mapString.elementAt(i);
    }
  }
  return result;
}
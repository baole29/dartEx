// --- Directions
// Check to see if two provided strings are anagrams of eachother.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False


bool anagrams(String stringA, String stringB) {

  return filter(sortCharsInString(stringA.toLowerCase().trim()))==filter(sortCharsInString(stringB.toLowerCase().trim()));
}

RegExp regExp = new RegExp(r"\w+");

String filter(String input) {

  //return "One line only !!!";

  return regExp.stringMatch(input);
}

String sortCharsInString(String input) {
  List<String> result = input.split('');
  result.sort();
  return result.join();
}
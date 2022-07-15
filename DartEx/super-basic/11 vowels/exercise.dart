// --- Directions
// Write a function that returns the number of vowels
// used in a string.  Vowels are the characters 'a', 'e'
// 'i', 'o', and 'u'.
// --- Examples
//   vowels('Hi There!') --> 3
//   vowels('Why do you ask?') --> 4
//   vowels('Why?') --> 0


RegExp regExp = new RegExp(r"([ueoai])");

int vowels(String input) {
  return regExp.allMatches(input.toLowerCase()).length;
  // return "One line only !!!";
}

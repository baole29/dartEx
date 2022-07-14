// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

bool palindrome(String input) {
  String result="";
  for(var i = 0; i<input.length;i++){
    result = result.padLeft(i+1,input[i]);
  }
  return result == input;
}

bool palindrome2(String input) {
  return input == reverse(input);


}

String reverse(String input) {
  return input.split('').reversed.join();
}

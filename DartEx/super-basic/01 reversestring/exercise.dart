
String reverse(String input) {
  String result="";
  for(var i = input.length-1; i>=0;i--){
    result+=input[i];
  }
  return result;
}

String reverse2(String input) {
  String result="";
  for(var i = 0; i<input.length;i++){
    result = result.padLeft(i+1,input[i]);
  }
  return result;
}

String reverse3(String input) {
  return input.split('').reversed.join();
}
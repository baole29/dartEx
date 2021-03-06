// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a pyramid shape
// with N levels using the # character.  Make sure the
// pyramid has spaces on both the left *and* right hand sides
// --- Examples
//   pyramid(1)
//       '#'
//   pyramid(2)
//       ' # '      < 2 | > 2
//       '###'      < 1 | > 3
//   pyramid(3)
//       '  #  '    < 3  | > 3
//       ' ### '    < 2  | > 4
//       '#####'    < 1  | > 5

import 'dart:math';

void pyramid(int lineCount, {Function(String) printForUnitTest}) {
  int count = 1;
  while(lineCount>0){
    printForUnitTest(pyramidLine(lineCount-1, count));
    count+=2;
    lineCount-=1;
  }
}

String pyramidLine(int level, int height) {
  return ' '*level+'#'*height+' '*level;
}
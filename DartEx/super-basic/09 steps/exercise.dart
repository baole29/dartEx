// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a step shape
// with N levels using the # character.  Make sure the
// step has spaces on the right hand side!
// --- Examples
//   steps(2)
//       '# '
//       '##'
//   steps(3)
//       '#  '
//       '## '
//       '###'
//   steps(4)
//       '#   '
//       '##  '
//       '### '
//       '####'

void steps(int lineCount, {Function(String) printForUnitTest}) {
  for(int i =1; i<=lineCount;i++){
    printForUnitTest(hashLine(i, lineCount-i));
  }
}

String hashLine(int lineCount, int lineNr) {
  return '#'*lineCount+' '* lineNr;
}
enum Operation { plus, minus, multiply, divide }

void main() {
  const a = 4;
  const b = 2;
  const plus = Operation.plus;
  const minus = Operation.minus;
  const multiply = Operation.multiply;
  const divide = Operation.divide;

  final expression = plus;
  switch (expression) {
    case plus:
      print('$a + $b = '+ (a+b).toString());
      break;
      case minus:
      print('$a - $b'+ (a-b).toString());
      break;
      case multiply:
      print('$a * $b'+ (a*b).toString());
      break;
      case divide:
      print('$a / $b'+ (a/b).toString());
      break;
    default:
  }
}
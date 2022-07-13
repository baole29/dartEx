import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;
  void printValues();
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
  double get perimeter => side *4;

  void printValues(){
    print('area $area, perimeter: $perimeter');
  }

}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
  double get perimeter => 2 * pi * radius;

  void printValues(){
    print('area $area, perimeter: $perimeter');
  }
}

void main() {
  Square square = Square(2);
  Circle circle = Circle(5);
  square.printValues();
  circle.printValues();
}
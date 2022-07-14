class Person{
  final String name;
  final int age;
  final double height;
  Person({required this.name, required this.age, required this.height});

  void printDecription(){
  print("My name is $name. I'm $age years old, I'm $height meters tall.");
  }
}

void main() {
  Person person = Person(name: "Bao", age: 22, height: 1.75);
  person.printDecription();

  Person person1 = Person(name: "Le", age: 22, height: 1.80);
  person1.printDecription();
}
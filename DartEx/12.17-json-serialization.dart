class Person {
  Person({required this.name, required this.age});
  final String name;
  final int age;

  static fromJson(Map<String, Object> map) {}
  // TODO: Implement fromJson
  // TODO: Implement toJson
}

void main() {
  final person = Person.fromJson({
    'name': 'Andrea',
    'age': 36,
  });
  final json = person.toJson();
  print(json);
}
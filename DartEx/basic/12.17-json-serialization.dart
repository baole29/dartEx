class Person {
  Person({required this.name, required this.age});
  final String name;
  final int age;

  factory Person.fromJson(Map<String, dynamic> map) {
    return Person(
      age: map['age'],
      name: map['name'],
    );

  }
  
  dynamic toJson() {
    Map<String, dynamic> map;
    return map = {
      'name': name,
      'age': age
    };
  }
}

void main() {
  final person = Person.fromJson({
    'name': 'Andrea',
    'age': 36,
  });
  print(person.name);
  final json = person.toJson();
  print(json);
}
import 'dart_first.dart';

class Person {
  late String name;
  late int age;
  late bool sex;

  Person({int? age, String name = 'not given'}) {
    this.name = name;
    this.age = age!;
  }

  Person.withSex(
      {required this.age, this.name = 'not given', required this.sex});
}

void main(List<String> args) {
  var person1 = Person(name: 'sumana', age: 25);
  var tikri = Person.withSex(age: 25, sex: false);
}

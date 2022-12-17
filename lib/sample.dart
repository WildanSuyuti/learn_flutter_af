class Person {
  final String name;
  final String address;
  final String Function() info;

  Person({required this.name, required this.address, required this.info});
}

class Student {
  final Person person;
  final String school;

  Student({required this.person, required this.school});
}

_() {
  String info() {
    return '';
  }

  Person person = Person(
    address: 'Sidayu',
    name: 'Abdullah',
    info: info,
  );
  /*  Person person = Person('Abdullah', 'Sidayu');
  Student student = Student(
    person: Person('Abdullah', 'Sidayu'),
    school: "Ma'had Al-Furqon",
  );*/

  String name = 'Abdullah';
  String studentName = name;
}

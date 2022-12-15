class Person {
  final String name;
  final String address;

  Person(this.name, this.address);
}

class Student {
  final Person person;
  final String school;

  Student({required this.person, required this.school});
}

_() {
  Person person = Person('Abdullah', 'Sidayu');
  Student student = Student(
    person: Person('Abdullah', 'Sidayu'),
    school: "Ma'had Al-Furqon",
  );
}

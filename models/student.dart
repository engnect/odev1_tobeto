class Student {
  late String firstName;
  late String lastName;
  late int grade;
  late String _status;

  Student(String firstName, String lastName, int grade) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
  }
  String get getFirstName {
    return "Öğrenci - " + this.firstName;
  }

  void set setFirstName(String value) {
    this.firstName = value;
  }

  String get getStatus {
    String message = "";
    if (this.grade >= 50) {
      message = 'geçti';
    } else if (this.grade >= 40) {
      message = 'bütünlemeye kaldı';
    } else {
      message = 'kaldı';
    }
    return message;
  }
}

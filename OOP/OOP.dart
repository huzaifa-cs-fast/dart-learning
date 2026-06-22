/*
 * OOP.dart
 * Scenario — University Management System
 * 
 * Person base idea — name, age
 * Student class — rollNo, CGPA, static counter for auto ID
 * Teacher class — subject, static counter for auto ID
 * Department class — holds List of Students + List of Teachers (aggregation)
 * display() on Department prints everything formatted
 * In main — create CS department, add 3 students, 2 teachers, display all
 * 
 * Author: Huzaifa (25K-0612)
 * University: FAST-NUCES Karachi
 */

class Person{
  String _name;
  int _age;

  Person(this._name, this._age);

  void display(){
    print("Name: $_name");
    print("Age: $_age");
  }
}

class Student extends Person{
  int _rNo;
  double _cgpa;
  int _autoID;
  static int _count = 0;

  Student (String name, int age, this._rNo, this._cgpa) : _autoID = ++_count , super(name, age);

  @override
  void display() {
    super.display();
    print("Roll # $_rNo");
    print("Automated Given ID # $_autoID");
    print("CGPA = $_cgpa");
  }
}

class Teacher extends Person{
  String _subject;
  static int _count = 0;
  int _autoID;

  Teacher (String name, int age, this._subject) : _autoID = ++_count, super(name, age);

  @override
  void display() {
    super.display();
    print("Automated Given ID # $_autoID");
    print("Subject: $_subject");
  }
}

class Department{
  List<Student> students;
  List<Teacher> teachers;
  String dept;
  Department(this.students, this.teachers, this.dept);

  void displayDept(){
    print("========== $dept DEPARTMENT ==========");
    print("Total Number of Teachers # ${teachers.length}");
    print("Total Number of Students # ${students.length}");
    print("------ Teacher Details ------");
    for (int i = 0 ; i < teachers.length ; i++){
      print("Teacher # ${i + 1}");
      teachers[i].display();
      print("");
    }
    print("------ Students ------");
    for (int i = 0 ; i < students.length ; i++){
      print("Student # ${i + 1}");
      students[i].display();
      print("");
    }

  }
}

void main() {
  Student s1 = Student("Huzaifa", 18, 612, 3.88);
  Student s2 = Student("Pithu", 19, 762, 3.91);
  Student s3 = Student("Ibtu", 20, 542, 4);

  Teacher t1 = Teacher("Sir Ghulam Qadir", 24, "Object-Oriented Programming");
  Teacher t2 = Teacher("Sir Shahid Ashraf", 52, "Multivariable Calculus");

  Department cs = Department([s1, s2, s3], [t1, t2], "Computer Science");

  cs.displayDept();
}
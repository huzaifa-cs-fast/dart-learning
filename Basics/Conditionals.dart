/*
 * conditionals.dart
 * Scenario: University Grade Classifier
 * 
 * Demonstrates: if/else , comparison operators,
 * logical operators (&&, ||), nested conditions
 * 
 * Author: Huzaifa (25K-0612)
 * University: FAST-NUCES Karachi
 */

void main() {
  double cgpa = 1.7;
  int sem = 6;

  print("===== Academic Standing of the Student =====");

  String standing;

  if (cgpa >= 3.5) {
    standing = "Distinction";
  } else if (cgpa >= 2.5) {
    standing = "Good";
  } else if (cgpa >= 2.0) {
    standing = "Average";
  } else {
    standing = "Probation";
  }

  print("Academic Standing: $standing");

  // Academic warning where both conditions required (obv self made!)
  if (sem > 4 && cgpa < 2.0) {
    print("Academic Warning!");
  }

  // Scholarship check, here either condition is enough (self made condition again! just for demonstration)
  if (cgpa >= 3.5 || sem == 1) {
    print("Eligible for Scholarship!");
  }
}

/*
 * variables.dart
 * Scenario: Student Profile System
 * 
 * Demonstrates: var, final, const, String, int, double, bool
 * String interpolation, formatted console output
 * 
 * Author: Huzaifa (25K-0612)
 * University: FAST-NUCES Karachi
 */

void main(){
  String name = "Huzaifa";
  double cgpa = 3.88;
  int semester = 2;
  bool isScholarshipEligible = true;
  final int rollNo = 612;
  const String uniName = "FAST - NUCES";

  print("====== Student Details ======");
  print("-- UNIVERSITY: $uniName --");
  print("Roll # $rollNo");
  print("Name: $name");
  print("Semesters Completed: $semester");
  print("CGPA = $cgpa");
  if(isScholarshipEligible){
    print(">> Eligible for Scholorship <<");
  }
/* Since bool value is true. Therefore, else part is considered as dead in dart.
  else{
    print(">> Not Eligible for Scholorship <<");
  }  
*/
}
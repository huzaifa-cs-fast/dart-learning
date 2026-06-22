/*
 * Lists.dart
 * Scenario — Course Registration System
 * 
 * List of available courses
 * Add / remove courses
 * Loop and print registered courses with index number
 * Check if a specific course exists in the list
 * Print total credit hours (assign each course a fixed credit hour)
 * 
 * Author: Huzaifa (25K-0612)
 * University: FAST-NUCES Karachi
 */

void check(String course, List<String> courses){
  for (String c in courses){
    if (c == course){
      print("Course $c Exists in Available Courses!");
      return;
    }
  }
  print("Course $course is not available!");
}

int getTotalCrHrs(List<int> crHrs){
  int total = 0;
  for (int h in crHrs){
    total += h;
  }
  return total;
}

void main(){
  List<String> courses = ["OOP", "DLD", "MVC", "TBW"];
  List<int> crHrs = [3, 3, 3, 2];

  courses.add("PST");
  crHrs.add(2);
  courses.add("EW");
  crHrs.add(2);
  courses.removeAt(3);
  crHrs.removeAt(3);

  print("========== Courses That Are Being Offered ==========");
  for (int i = 0 ; i < courses.length ; i++){
    print("Index # $i | Course: ${courses[i]}");
  }

  check("DLD", courses);

  int totalCrHrs = getTotalCrHrs(crHrs);
  print("Total Credit Hours of Available Courses = $totalCrHrs");

}
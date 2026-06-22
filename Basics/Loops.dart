/*
 * loops.dart
 * Scenario — Exam Results Processor
 * 
 * List of 8 student marks
 * Loop and print each with Pass/Fail status
 * Count how many passed
 * Find highest and lowest marks
 * Print a summary at the end
 * 
 * Author: Huzaifa (25K-0612)
 * University: FAST-NUCES Karachi
 */

void main(){
  int pass = 0;
  int fail = 0;
  List<double> marks = [89, 12, 72.6, 99, 41, 55.3, 44.5, 79.8];

  print("===== Status of All Students =====");
  for (double m in marks){
    if (m > 50) {
      print("Marks: $m | Status: Pass!");
      pass++;
    }
    else{
      print("Marks: $m | Status: Fail");
      fail++;
    }
  }

  double highest = marks[0];
  double lowest = marks[0];
  
  for (int i = 1 ; i < marks.length ; i++){
    if(marks[i] > highest){
      highest = marks[i];
    }
    if(marks[i] < lowest){
      lowest = marks[i];
    }
  }

  print("============= Sumaary ===============");
  print("The Marks of 8 students are as:");
  print(marks);
  print("Highest Marks = $highest");
  print("Lowest Marks = $lowest");
  print("Pass Students = $pass");
  print("Fail Students = $fail");

}
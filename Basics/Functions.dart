/*
 * Functions.dart
 * Scenario — Fee Calculator
 * 
 * calculateFee(int creditHours) → returns final fee
 * applyDiscount(double fee, double percent) → returns discounted fee
 * printInvoice(String name, double fee) → prints formatted invoice
 * Use arrow functions where possible
 * 
 * Author: Huzaifa (25K-0612)
 * University: FAST-NUCES Karachi
 */

double calculateFee (int creditHours) => creditHours * 11000;
double applyDiscount (double fee, double percent) => fee - ((percent / 100) * fee);
void printInvoice (String name, double fee) {
  print("=========== Student Invoice ==========");
  print("Student Name: $name");
  print("Fee: $fee");
  print("=======================================");
}

void main(){
  String name = "Huzu";
  int crHrs = 19;
  double discountPercent = 50;

  double fee = calculateFee(crHrs);
  double discountedFee = applyDiscount(fee, discountPercent);
  printInvoice(name, discountedFee);
  
}
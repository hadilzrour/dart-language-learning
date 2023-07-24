void main() {
  double netSalary = 1200;
  double expenses = 1000;

  if (netSalary > expenses) {
    print("You have saved ${netSalary - expenses} this month");
  } else if (expenses > netSalary) {
    print("You have lose ${expenses - netSalary} this month");
  } else {
    print("Your balance hasn't changed");
  }
}

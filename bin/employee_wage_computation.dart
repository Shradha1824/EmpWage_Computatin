import 'dart:math';

void main(List<String> args) {
  print("Welcome to Employee Wage Computation Program");
  checkEmployeeprasentorabsent();
}

checkEmployeeprasentorabsent() {
  var r = Random();
  var empCheck = r.nextInt(2);
  print(empCheck);

  if (empCheck == 1) {
    print("Employee is Present");
  } else {
    print("Employee is Absent");
  }
}

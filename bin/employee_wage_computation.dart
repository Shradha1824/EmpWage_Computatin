import 'dart:math';

void main(List<String> args) {
  print('Welcome to Employee Wage Computation Program');
  checkEmployeeprasentorabsent();
  checkDailyEmpWage();
}

// ignore: always_declare_return_types
checkEmployeeprasentorabsent() {
  var r = Random();
  var empCheck = r.nextInt(2);
  print(empCheck);

  if (empCheck == 1) {
    print('Employee is Present');
  } else {
    print('Employee is Absent');
  }
}

// ignore: always_declare_return_types
checkDailyEmpWage() {
  var empHrs = 0;
  var empWage = 0;
  var is_full_day = 1;
  var emp_rate_per_hr = 20;

  var r = Random();
  var empCheck = r.nextInt(2);

  if (empCheck == is_full_day) {
    empHrs = 8;
    print('Employee Wage For full day');
  } else {
    empHrs = 0;
    print('Employee Wage for zero day');
  }

  empWage = empHrs * emp_rate_per_hr;
  print(empWage);
}

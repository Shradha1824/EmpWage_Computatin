import 'dart:math';

void main(List<String> args) {
  final num_of_working_days = 20;
  final max_hr_in_month = 100;
  var empHrs = 0;
  var empWage = 0;
  var is_full_day = 1;
  var is_half_day = 2;
  var emp_rate_per_hr = 20;
  var totalEmpWage = 0;
  var totalEmpHrs = 0;
  var totalWorkingDays = 0;

  var r = Random();
  var empCheck = r.nextInt(2);
  var empCheckForpt = r.nextInt(3);

  print('Welcome to Employee Wage Computation Program');

  if (empCheck == 1) {
    print('Employee is Present');
  } else {
    print('Employee is Absent');
  }

  if (empCheck == is_full_day) {
    empHrs = 8;
    print('Employee Wage For full day');
  } else {
    empHrs = 0;
    print('Employee Wage for zero day');
  }

  empWage = empHrs * emp_rate_per_hr;
  print(empWage);

  if (empCheckForpt == is_full_day) {
    empHrs = 8;
    print('Employee Wage For full day');
  } else if (empCheckForpt == is_half_day) {
    empHrs = 4;
    print('Employee Wage for Half Day');
  } else {
    empHrs = 0;
    print('Employee Wage for zero day');
  }

  empWage = empHrs * emp_rate_per_hr;
  print(empWage);

  switch (empCheckForpt) {
    case 1:
      empHrs = 8;
      break;
    case 2:
      empHrs = 4;
      break;
    case 3:
      empHrs = 0;
  }
  empWage = empHrs * emp_rate_per_hr;
  print(empWage);

  for (var day = 0; day < num_of_working_days; day++) {
    switch (empCheckForpt) {
      case 1:
        empHrs = 8;
        break;
      case 2:
        empHrs = 4;
        break;

      default:
        empHrs = 0;
    }
    empWage = empHrs * emp_rate_per_hr;
    totalEmpWage = totalEmpWage + empWage;
    print(totalEmpWage);
  }

  while (
      totalEmpHrs < max_hr_in_month && totalWorkingDays < num_of_working_days) {
    totalWorkingDays++;
    switch (empCheckForpt) {
      case 1:
        empHrs = 8;
        break;
      case 2:
        empHrs = 4;
        break;
      default:
        empHrs = 0;
    }
    totalEmpHrs += empHrs;
    print('Days: $totalWorkingDays');
    print("'EmpHrs: $totalEmpHrs");
  }

  print('Using Function');
  computeEmpWage();
  dailyWageAlongTotalWage();
}

computeEmpWage() {
  final num_of_working_days = 20;
  final max_hr_in_month = 100;
  var empHrs = 0;
  var totalEmpHrs = 0;
  var totalWorkingDays = 0;

  var r = Random();
  var empCheck = r.nextInt(3);

  while (totalEmpHrs < max_hr_in_month) {
    switch (empCheck) {
      case 1:
        empHrs = 8;
        break;
      case 2:
        empHrs = 4;
        break;
      default:
        empHrs = 0;
    }
    totalEmpHrs += empHrs;
    print("'EmpHrs: $totalEmpHrs");
  }
}

dailyWageAlongTotalWage() {
  final emp_rate_per_hr = 20;
  final num_of_working_days = 20;
  final max_hr_in_month = 100;
  var totalEmpWage = 0;

  var empHrs = 0;
  var totalEmpHrs = 0;
  var totalWorkingDays = 0;

  var r = Random();
  var empCheck = r.nextInt(3);

  switch (empCheck) {
    case 1:
      empHrs = 8;
      break;
    case 2:
      empHrs = 4;
      break;
    default:
      empHrs = 0;
  }

  var dailyWage = empHrs * emp_rate_per_hr;
  print(dailyWage);

  totalEmpWage = num_of_working_days * dailyWage;
  print("+++++++++++++ $totalEmpWage");
  print('"DailyWage:" $dailyWage + "totalWage:" $totalEmpWage ');
}

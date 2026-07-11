class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked)
    : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  print('--- ระบบคำนวณเงินเดือนพนักงาน ---\n');

  List<Employee> employees = [
    FullTimeEmployee('อาม', 40000),
    PartTimeEmployee('นัว', 44.0, 48),
    FullTimeEmployee('กาย', 18000),
    PartTimeEmployee('เจม', 80, 192),
  ];

  for (var emp in employees) {
    print('พนักงาน: ${emp.name}');
    print('เงินเดือนที่ได้รับ: ${emp.calculateSalary()} บาท');
    print('-------------------------------------------');
  }
}

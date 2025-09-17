void assignment1() {
  print("=== Assignment 1: Operators ===");

  num num1 = 15;
  num num2 = 10;

  print("Sum: ${num1 + num2}");
  print("Product: ${num1 * num2}");
  print("Difference: ${num1 - num2}");

  if (num1 > num2) {
    print("$num1 is greater than $num2");
  } else if (num1 < num2) {
    print("$num2 is greater than $num1");
  } else {
    print("Both numbers are equal");
  }

  if (num1 > 0 && num2 > 0) {
    print("Both are positive");
  }
  if (num1 > 0 || num2 > 0) {
    print("At least one is positive");
  }

  String? name = null;
  print(name ?? "Unknown");
  print(name?.length);
}

void assignment2() {
  print("\n=== Assignment 2: Control Flow ===");

  int grade = 85;
  if (grade >= 90 && grade <= 100) {
    print("Grade: A");
  } else if (grade >= 80 && grade <= 89) {
    print("Grade: B");
  } else if (grade >= 70 && grade <= 79) {
    print("Grade: C");
  } else {
    print("Grade: F");
  }

  print("Even numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  int dayNumber = 3;
  switch (dayNumber) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number");
  }
}

void assignment3() {
  print("\n=== Assignment 3: Lists & Maps ===");

  var list = [10, 20, 30, 40];

  print("List elements (for-in):");
  for (var value in list) {
    print(value);
  }

  print("Elements multiplied by 2 (forEach):");
  list.forEach((element) => print(element * 2));

  var mergedList = [...list, ...[50, 60]];
  print("Merged List: $mergedList");

  var student = {'name': 'Ali', 'age': 22, 'grade': 'A'};

  print("Student Info:");
  student.forEach((key, value) {
    print("$key: $value");
  });

  student['city'] = 'Cairo';
  student['grade'] = 'B';
  print("Updated Student Info: $student");
}

void assignment4() {
  print("\n=== Assignment 4: Functions ===");

  void addNumbers(num a, num b) {
    print("Sum: ${a + b}");
  }

  addNumbers(5, 7);

  num square(num n) => n * n;
  print("Square of 4: ${square(4)}");

  void greet({String? name, String? city}) {
    if (name == null) {
      print("Hello Guest");
    } else if (city == null) {
      print("Hello $name");
    } else {
      print("Hello $name from $city");
    }
  }

  greet();
  greet(name: "Ali");
  greet(name: "Ali", city: "Cairo");
}

void main() {
  assignment1();
  assignment2();
  assignment3();
  assignment4();
}

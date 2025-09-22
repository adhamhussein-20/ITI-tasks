// 1. Inheritance
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print("Brand: $brand, Year: $year");
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, int year, this.doors) : super(brand, year);

  @override
  void displayInfo() {
    print("Car Brand: $brand, Year: $year, Doors: $doors");
  }
}

class Bike extends Vehicle {
  String type;

  Bike(String brand, int year, this.type) : super(brand, year);

  @override
  void displayInfo() {
    print("Bike Brand: $brand, Year: $year, Type: $type");
  }
}

// 2. Method Override
class Animal {
  void speak() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Dog says: Woof!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Cat says: Meow!");
  }
}

// 3. Abstraction
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14159 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

// 4. Static
class Counter {
  static int count = 0;

  Counter() {
    count++;
  }

  static void getCount() {
    print("Total objects created: $count");
  }
}

// 5. Method Overloading (Simulated)
class Calculator {
  int add(int a, int b, [int? c]) {
    if (c != null) {
      return a + b + c;
    }
    return a + b;
  }
}

// 6. Mixins
mixin Logger {
  void log(String msg) {
    print("[LOG]: $msg");
  }
}

mixin Printer {
  void printData(String data) {
    print("[DATA]: $data");
  }
}

class Report with Logger, Printer {
  void generateReport() {
    print("Generating report...");
  }
}

// MAIN FUNCTION
void main() {
  // 1. Inheritance
  var car = Car("Toyota", 2020, 4);
  var bike = Bike("Yamaha", 2022, "Sport");
  car.displayInfo();
  bike.displayInfo();

  print("\n--- Method Override ---");
  // 2. Method Override
  List<Animal> animals = [Dog(), Cat(), Dog()];
  for (var animal in animals) {
    animal.speak();
  }

  print("\n--- Abstraction ---");
  // 3. Abstraction
  var circle = Circle(5);
  var rectangle = Rectangle(4, 6);
  print("Circle area: ${circle.area()}");
  print("Rectangle area: ${rectangle.area()}");

  print("\n--- Static ---");
  // 4. Static
  Counter();
  Counter();
  Counter();
  Counter.getCount();

  print("\n--- Method Overloading (Simulated) ---");
  // 5. Method Overloading
  var calc = Calculator();
  print("Sum of 2 numbers: ${calc.add(10, 20)}");
  print("Sum of 3 numbers: ${calc.add(10, 20, 30)}");

  print("\n--- Mixins ---");
  // 6. Mixins
  var report = Report();
  report.log("Report creation started");
  report.printData("Report Data: Sales increased by 20%");
  report.generateReport();
}

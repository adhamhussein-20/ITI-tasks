//1

//A class is a blueprint or template used to create objects.

//An object is an instance of a class (a real, usable thing created from the class).

class Car {
  String color;
  String model;

  void drive() {
    print("The $model is driving");
  }
}

void main() {
  Car myCar = Car(); // Object created from class
  myCar.color = "Red";
  myCar.model = "BMW";
  myCar.drive();
}

//2

//Constructor is A special method in a class that is automatically called when you create an object.
//It is used to initialize the object’s properties.
class Person {
  Person() {
    print("Default Constructor called");
  }
}

//3

class Example {
  int publicVar = 10;     // public
  int _privateVar = 20;   // private (can only be accessed inside this file)
}

//4
//Encapsulation Hiding the internal details of a class and controlling access to its data.

//Getter/Setter  Used to safely access and modify private variables.

class BankAccount {
  double _balance = 0; // private

  // Getter
  double get balance => _balance;

  // Setter
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Invalid amount");
    }
  }
}

void main() {
  BankAccount account = BankAccount();
  account.balance = 100; // uses setter
  print(account.balance); // uses getter
}
//5
//Add validation logic before updating the variable.

//Maintain control over data.

//Prevent invalid or harmful data from being stored.
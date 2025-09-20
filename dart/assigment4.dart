void main() {
  addNumbers(5, 10);

  print("Square of 4: ${square(4)}");

  greet();
  greet(name: "Ali");
  greet(name: "Ali", city: "Cairo");
}

void addNumbers(num a, num b) {
  print("Sum: ${a + b}");
}

num square(num x) => x * x;

void greet({String? name, String? city}) {
  if (name == null) {
    print("Hello Guest");
  } else if (city == null) {
    print("Hello $name");
  } else {
    print("Hello $name from $city");
  }
}

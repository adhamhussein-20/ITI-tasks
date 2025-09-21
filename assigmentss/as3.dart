class User {
  String _username = "";

  set username(String name) {
    if (name.trim().isNotEmpty) {
      _username = name;
      print("Username set to: $_username");
    } else {
      print("Invalid username. It cannot be empty.");
    }
  }

  String get username => _username;
}

void main() {
  User user = User();

  user.username = "Adham";
  user.username = "";

  print("Final Username: ${user.username}");
}

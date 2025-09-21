class BankAccount {
  double _balance = 0; // private variable

  // Getter for balance
  double get balance => _balance;

  // Setter to add money (only if amount > 0)
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount | New Balance: $_balance");
    } else {
      print("Invalid amount. Deposit must be greater than 0.");
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  account.deposit = 100; // Adds 100
  account.deposit = -50; // Invalid deposit

  print("Final Balance: ${account.balance}");
}

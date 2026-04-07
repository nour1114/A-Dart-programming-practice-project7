class BankAccount {
  String owner;
  double _balance;
  BankAccount(this.owner, this._balance);
  double get balance => _balance;
  void deposit(double amount) {
    if (amount <= 0) {
      print("amount must be greater than 0 ");
    } else {
      _balance += amount;
      print("Deposited $amount. New balance: $_balance");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("withdraw amount must be greater than 0");
    } else {
      print("Insufficient balance. Current balance: $_balance");
    }
  }

  void main() {
    BankAccount account = BankAccount("Nour", 1000);
    print("${account.owner}'s balance:${account.balance}");
    account.deposit(500);
    account.withdraw(400);
    account.withdraw(1500);
    print("Final balance:${account.balance}");
  }
}

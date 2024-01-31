import 'package:dart_app/BankAccount.dart';
void main() {
  // Creating two instances of BankAccount
  BankAccount account1 = BankAccount(1001, 1500.0, 'Savings', 2.5);
  BankAccount account2 = BankAccount(2002, 2500.0, 'Checking', 1.8);

  // Calling methods on the first account
  account1.deposit(500.0);
  account1.withdraw(200.0);
  account1.addInterest();
  account1.display();

  // Separating output for clarity
  print('\n------------------------\n');

  // Calling methods on the second account
  account2.deposit(1000.0);
  account2.withdraw(300.0);
  account2.addInterest();
  account2.display();
}
class BankAccount {
  int accountNumber;
  double balance;
  String accountType;
  double interestRate;

  // Constructor
  BankAccount(this.accountNumber, this.balance, this.accountType, this.interestRate);

  // Method to deposit money into the account
  void deposit(double amount) {
    balance += amount;
    print('Deposited $amount. New balance: $balance');
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('Withdrawn $amount. New balance: $balance');
    } else {
      print('Insufficient funds. Cannot withdraw $amount.');
    }
  }

  // Method to add interest to the account balance
  void addInterest() {
    double interest = balance * interestRate / 100;
    balance += interest;
    print('Interest added. New balance: $balance');
  }

  // Method to display account information
  void display() {
    print('Account Number: $accountNumber');
    print('Balance: $balance');
    print('Account Type: $accountType');
    print('Interest Rate: $interestRate%');
  }
}



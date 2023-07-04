import 'dart:io';

class ATM {
  int balance = 0;
  int _pinNumber = 0;
  int userChoice = 0;
  int money = 0;

  // Get user Information
  void getUserInformation() {
    print("Welcome to our Bank ATM");
    print("Please Enter your PinCode");
    _pinNumber = int.parse(stdin.readLineSync()!);
    print("Please Enter your Balance");
    balance = int.parse(stdin.readLineSync()!);
    atmOperaton();
  }

  // ATM main operational screen
  void atmOperaton() {
    print("Which operation do you want to proccesd");
    print("1=> Deposit,\n 2=> withdraw,\n 3=>CheckBalance,\n 4=> Exit");
    userChoice = int.parse(stdin.readLineSync()!);

    switch (userChoice) {
      case 1:
        deposit();
        break;
      case 2:
        withdraw();
        break;
      case 3:
        checkBalance();
        break;
      case 4:
        exit();
        break;
      default:
        {
          print("Invalid input");
          atmOperaton();
        }
    }
  }

  // Deposit function
  void deposit() {
    print("How Much Money do you want to deposit");
    money = int.parse(stdin.readLineSync()!);
    balance += money;
    print("Deposit Done Sucessfully");
    checkBalance();
  }

  // Withdraw Function
  void withdraw() {
    print("How Much Money do you want to withdraw");
    money = int.parse(stdin.readLineSync()!);
    if (money > balance) {
      // not allow to withdraw
      print("Sorry you don't have enough balance to withdraw it");
      checkBalance();
    } else {
      // withdraw allowed
      balance -= money;
      print("withdraw Done Sucessfully");
      checkBalance();
    }
  }

  // check Balance Function
  void checkBalance() {
    print("Your Balance is $balance");
    doyouwant();
  }

  //function to Ask if yhe user need any more services or not
  void doyouwant() {
    print("Do you Want anythig else?");
    print("1=> Yes,\n 2=>No");
    userChoice = int.parse(stdin.readLineSync()!);
    if (userChoice == 1) {
      atmOperaton();
    } else if (userChoice == 2) {
      exit();
    } else {
      print("Invalid number");
      doyouwant();
    }
  }

  // Exit
  void exit() {
    print("Thanks for using our Bank ATM");
  }
}

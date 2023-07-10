import 'company.dart';
import 'contract.dart';
import 'nda.dart';

class FlutterDeveloper extends Company implements Contract, NDA {
  @override
  void bandOne() {
    print("Contract Band One");
  }

  @override
  void bandfive() {
    print("Contract Band five");
  }

  @override
  void bandfour() {
    print("Contract Band four");
  }

  @override
  void bandthree() {
    print("Contract Band three");
  }

  @override
  void bandtwo() {
    print("Contract Band two");
  }

  @override
  void benifits() {
    print("yo will get 6000 EGP as bonus");
  }

  @override
  void daysOff() {
    print("you will get 3 days off per week");
  }

  @override
  void doNotShareSecretsWithOthers() {
    print("do Not Share Secrets With Others");
  }

  @override
  void netSalary() {
    print("your Net Sallary is 16000 EGP");
  }

  @override
  void workingHours() {
    print("You have to work 10 hrs per week");
  }
}

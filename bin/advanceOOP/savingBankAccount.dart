import 'bankAccount.dart';
class Savingbankaccount extends Bankaccount {
 double minBalance;
  Savingbankaccount([double balance=1000 ,this.minBalance=1000])
  : super(balance);


  @override
  bool withdraw(double amount) {
    if ((balance -amount )<1000){
      print("min balance should be lest $minBalance");
      return false;
    }
   return super.withdraw(amount);

}

@override
  bool deposit(double amount) {
        if(amount<100){
          print("inavalied");
          return false ;
        }

    return super.deposit(amount);
  }
@override
  void view() {
    print("the type of this bank accont is saving account");
    super.view();
  }
}
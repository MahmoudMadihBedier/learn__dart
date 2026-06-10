// the encapsulation is one of the fundamental 
//principles of object-oriented programming (OOP).
// It refers to the bundling of data (attributes)
// and methods (functions) that operate on
// the data into a single unit, called a class.
// Encapsulation also involves restricting direct 
//access to some of an object's components, 
//which is a means of preventing unintended
// interference and misuse of the data.


class BanckAccount{
  final String accountNumber;
   double _balance;

   
   String get balance=>"user balance is : $_balance";


  BanckAccount(this.accountNumber, this._balance);
set withdraw (double amount){
  if (amount > _balance && amount > 0 ) {
    print("Insufficient funds. Withdrawal denied.");
  } else {
    _balance -= amount;
    print("Withdrawal successful. New balance: $_balance");
  }
}
set deposit(double amount){
  if (amount > 0){
    _balance += amount;
    print("Deposit successful. New balance: $_balance");  
  }else{
    print("Invalid deposit amount. Deposit denied.");
  }
}

}
import 'client.dart';
class Bankaccount {
late int accountId;
late double balance;
 static int idGenerator=10000;
 Client owner;
Bankaccount(this.owner,{this.balance=0, }){
  accountId=idGenerator;
  idGenerator++;
}
bool withdraw(double amount){
  if (amount<balance ){
    balance-=amount;
    print("the withdraw sucsess and your balance now : ${balance}");
    return true;
  }if (amount<0){
    return false;
  }
  balance-=amount;
  return true;
}

bool deposit (double amount ){
  if (amount <0){
    print("the amount is in negitive ");
    return false;

  }if(amount>0){
    print("the deposit  sucsses") ;
    balance+=amount;
    return true;
  }else{
    print("the process is ignored");
    return false;
  }
}

void view(){
  print("the type of this bank accont is normal");
  print("the account id : $accountId");
  print("the balance :$balance");
}

}
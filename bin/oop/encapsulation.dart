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
  final double balance;
  BanckAccount(this.accountNumber, this.balance);
}
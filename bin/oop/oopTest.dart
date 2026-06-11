class Book {
  String title;
  String author;
  String isbn;
  bool isBorrowed = false;
  Book(this.title, this.author, this.isbn );
  void borrowBook() {
    isBorrowed = true;
  }
  void returnBook() {
    isBorrowed = false;
  }
}

class Loan{
 late Book book;
 late Member member;
 late DateTime loanDate;
 late DateTime returnDate;
 Map<int,Map<int,String>> borrowedBy;
  Loan(this.book, this.member, this.loanDate, this.returnDate, this.borrowedBy);

void checkdateBowworing(){
  if (DateTime.now().isAfter(returnDate)){
    print("the book is overdue");
  }else{
    print("the book is not overdue"); 
}
}

   void borrowingBook( int bookId ,int memberId, String bookName){
    Map<int,Map<int,String>> theBookBortow ={
      bookId:
      {
        memberId:bookName
      }
    };
    if (theBookBortow.containsKey(bookId)){
      print("the book is already borrowed");
    }else{
    borrowedBy.addEntries(theBookBortow.entries);
    }
 }

}
class Member {

  String name;
  int memberId;
  List<Book> borrowedBooks = [];

  Member(this.name, this.memberId);

  void borrowBook(Book book) {
    borrowedBooks.add(book);
    book.borrowBook();
  }

  void returnBook(Book book) {
    borrowedBooks.remove(book);
    book.returnBook();
  }
}
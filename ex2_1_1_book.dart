class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print('ชื่อหนังสือ: $title');
    print('ผู้แต่ง: $author');
    print('ราคา: $price');
    print('----------------------');
  }
}

void main() {
  print('=====หนังสือในระบบ=====');

  Book book = Book('Overlord', 'คุงาเนะ มารุยามะ', 299);
  Book book1 = Book('Mushoku Tensei', 'ริฟูจิน นา มาโกโนเตะ', 279);

  book.showDetail();
  book1.showDetail();
}

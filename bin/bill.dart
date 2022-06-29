import 'dart:math';
import 'book.dart';
import 'item.dart';

class Bill {
  Bill();
  final id = Random().nextInt(1000);
  double _bill = 0;
  final Map<String, Item> _books = {};
  void addBook(Book book) {
    if (_books[book.id] == null) {
      _books[book.id] = Item(book: book, qty: 1);
    } else {
      _books[book.id] = Item(book: book, qty: _books[book.id]!.qty + 1);
    }
    _bill += book.price;
  }

  String get totalBill => 'Bill # $id - Total Bill Amount: $_bill';
  List<String>? get viewBooks {
    final List<String> details = [];
    _books.forEach((key, value) {
      final book = value.book;
      details.add(
          '(${book.id}) ${book.title} (${book.author}) - (Rs.${book.price} x ${value.qty} = ${book.price * value.qty})');
    });
    return details;
  }
}

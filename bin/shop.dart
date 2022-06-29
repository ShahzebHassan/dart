// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'book.dart';

class Shop {
  Shop({required this.name});
  // ignore: prefer_typing_uninitialized_variables
  final name;
  final List<Book> _books = [];
  List<String> get availableBooks {
    return _books.map((book) => book.getDetails()).toList();
  }

  set addBooks(List<Book> newStock) => _books.addAll(newStock);
  Book? getBookById(String id) => //?:variable can be null
      _books.firstWhereOrNull((book) => book.id == (id));
}

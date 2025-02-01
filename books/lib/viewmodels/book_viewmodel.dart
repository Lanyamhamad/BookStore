import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/database_service.dart';

class BookViewModel extends ChangeNotifier {
  List<Book> _books = [];
  List<Book> get books => _books;

  Future<void> loadBooks() async {
    _books = await FirebaseService.fetchBooks();
    notifyListeners();
  }

  Future<void> addBook(Book book) async {
    await FirebaseService.addBook(book);
    await loadBooks();
  }

  Future<void> deleteBook(String bookId) async {
    await FirebaseService.deleteBook(bookId);
    await loadBooks();
  }

  // Future<void> updateBook(Book book) async {
  //   await FirebaseService.updateBook(book);
  //   await loadBooks();
  // }
}
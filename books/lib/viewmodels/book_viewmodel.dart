import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/database_service.dart';

class BookViewModel extends ChangeNotifier {
  List<Book> _books = [];
  List<Book> get books => _books;

  Future<void> loadBooks() async {
    _books = await DatabaseService.instance.fetchBooks();
    notifyListeners();
  }

  Future<void> addBook(Book book) async {
    await DatabaseService.instance.insertBook(book);
    await loadBooks();
  }

  Future<void> deleteBook(int id) async {
    await DatabaseService.instance.deleteBook(id);
    await loadBooks();
  }

  Future<void> updateBook(Book book) async {
    await DatabaseService.instance.updateBook(book);
    await loadBooks();
  }
}
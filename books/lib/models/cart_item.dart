import 'package:books/models/book.dart';

class CartItem {
  final Book book;
  final int quantity;

  CartItem({
    required this.book,
    required this.quantity,
  });

  double get totalPrice => book.price * quantity;
}
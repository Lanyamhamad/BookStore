import 'package:books/models/order_model.dart';
import 'package:books/services/database_service.dart';
import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class CartViewModel extends ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(CartItem item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeFromCart(CartItem item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  double get totalCost => _cartItems.fold(0, (sum, item) => sum + item.totalPrice);

  
}
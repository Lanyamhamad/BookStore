import 'package:books/models/book.dart';
import 'package:flutter/material.dart';

class BookShop extends ChangeNotifier {
  // book for sale
  final List<Book> _shop = [
    // HTML Book ....
    Book(
      title: 'HTML & CSS: Design and Build Websites',
      author: 'John Doe',
      price: "35.99",
      imagePath: 'assets/images/HTML&CSS.jpg',
    ),
    
    Book(
      title: 'JavaScript: The Definitive Guide',
      author: 'David Flanagan',
      price: "49.99",
      imagePath: 'assets/images/secHTML.jpg',
    ),
    
    Book(
      title: 'Flutter: The Complete Guide',
      author: 'Sarah Dawson',
      price: "49.99",
      imagePath: 'assets/images/thirdHTML.jpg',
    ),
    Book(
      title: 'Flutter: The Complete Guide',
      author: 'Sarah Dawson',
      price: "49.99",
      imagePath: 'assets/images/foHTML.jpg',
    ),
    
  ];
  // user cart
  List<Book> _userCart = [];

  // get book list
  List<Book> get bookShop => _shop; 

  // get user cart
  List<Book> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Book book) { 
    _userCart.add(book);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Book book) {
    _userCart.remove(book);
    notifyListeners();
  } 
}
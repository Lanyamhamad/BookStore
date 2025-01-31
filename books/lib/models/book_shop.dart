import 'package:books/models/book.dart';
import 'package:flutter/material.dart';

class BookShop extends ChangeNotifier {
  // book for sale
  final List<Book> _shop = [
    // HTML Book ....
    Book(
      id: 1,
      title: 'HTML & CSS: Design and Build Websites',
      author: 'John Doe',
      price: 35.99,
      imagePath: 'assets/images/HTML&CSS.jpg', 
      pages: '300 pages',
      viewIsSelected: true, 
      boxColor: const Color.fromARGB(255, 249, 151, 121), 
      level: 'beginner' ,
    ),
    
    Book(
      id: 1,
      title: 'JavaScript: The Definitive Guide',
      author: 'David Flanagan',
      price: 49.99,
      imagePath: 'assets/images/secHTML.jpg',
      pages: '500 pages',
      viewIsSelected: false,
      boxColor: const Color.fromARGB(255, 239, 209, 121),
      level: 'intermediate',
    ),
    
    Book(
      id: 1,
      title: 'Flutter: The Complete Guide',
      author: 'Sarah Dawson',
      price: 49.99,
      imagePath: 'assets/images/thirdHTML.jpg',
      pages: '500 pages',
      viewIsSelected: false,
      boxColor: const Color.fromARGB(255, 189, 212, 121),
      level: 'advanced',
    ),
    Book(
      id: 1,
      title: 'Flutter: The Complete Guide',
      author: 'Sarah Dawson',
      price: 49.99,
      imagePath: 'assets/images/foHTML.jpg',
      pages: '500 pages',
      viewIsSelected: false,
      boxColor: const Color.fromARGB(255, 121, 212, 177),
      level: 'advanced',
    ),
    
  ];
  // user cart
  List<Book> _userCart = [];      //This list is intended to store instances of the Book class

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
  // **Clear the cart after purchase**
  void clearCart() {// clearCart() will empty the cart after purchase is completed.
    _userCart.clear();
    notifyListeners();
  }  
}
import 'package:books/models/navigator/order_model.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/book.dart';

class FirebaseService {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Book Operations
  static Future<void> addBook(Book book) async {
    await _db.collection('books').add(book.toMap());
  }

  static Future<List<Book>> fetchBooks() async {
    QuerySnapshot snapshot = await _db.collection('books').get();
    return snapshot.docs.map((doc) => Book.fromMap(doc.data() as Map<String, dynamic>)).toList();
  }

  static Future<void> deleteBook(String bookId) async {
    await _db.collection('books').doc(bookId).delete();
  }

  // Order Operations
  static Future<void> insertOrder(OrderBook order) async {
    await _db.collection('orders').add(order.toMap());
  }

  static Future<List<OrderBook>> fetchOrders() async {
    QuerySnapshot snapshot = await _db.collection('orders').get();
    return snapshot.docs.map((doc) => OrderBook.fromMap(doc.data() as Map<String, dynamic>)).toList();
  }

  
}

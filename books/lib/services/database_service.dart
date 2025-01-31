import 'package:books/models/order_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/book.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._init();
  static Database? _database;

  DatabaseService._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('bookshop.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE books (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        author TEXT,
        imagePath TEXT,
        price REAL,
        pages TEXT,
        level TEXT,
        viewIsSelected INTEGER
      )
    ''');
    // create order table
    await db.execute('''     
    CREATE TABLE orders (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      bookId INTEGER,
      bookTitle TEXT,
      bookPrice REAL,
      orderDate TEXT,
      FOREIGN KEY (bookId) REFERENCES books (id)
    )
  ''');
  }
  // these are for books 
  Future<void> insertBook(Book book) async {
    final db = await instance.database;
    await db.insert('books', book.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Book>> fetchBooks() async {
    final db = await instance.database;
    final books = await db.query('books');
    return books.map((json) => Book.fromMap(json)).toList();
  }

  Future<void> deleteBook(int id) async {
    final db = await instance.database;
    await db.delete('books', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> updateBook(Book book) async {
    final db = await instance.database;
    await db.update('books', book.toMap(), where: 'id = ?', whereArgs: [book.id]);
  }
  Future<void> insertOrder(Order order) async {
  final db = await instance.database;
  await db.insert('orders', order.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<Order>> fetchOrders() async {
  final db = await instance.database;
  final orders = await db.query('orders');
  return orders.map((json) => Order.fromMap(json)).toList();
}

}

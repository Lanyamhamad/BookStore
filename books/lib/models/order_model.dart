class Order {
  final int? id;
  final int bookId;
  final String bookTitle;
  final double bookPrice;
  final String orderDate;

  Order({this.id, required this.bookId, required this.bookTitle, required this.bookPrice, required this.orderDate});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'bookId': bookId,
      'bookTitle': bookTitle,
      'bookPrice': bookPrice,
      'orderDate': orderDate,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'],
      bookId: map['bookId'],
      bookTitle: map['bookTitle'],
      bookPrice: map['bookPrice'],
      orderDate: map['orderDate'],
    );
  }
}

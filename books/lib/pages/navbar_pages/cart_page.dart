import 'package:books/components/book_tile.dart';
import 'package:books/models/book.dart';
import 'package:books/models/book_shop.dart';
import 'package:books/models/navigator/order_model.dart';
import 'package:books/services/database_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove item from cart
  void removeItemFromCart(Book book) {
    Provider.of<BookShop>(context, listen: false).removeItemFromCart(book);
    setState(() {}); // update UI to reflect the removal
  }

  // pay button tapped
   void payNow() async {
  final bookShop = Provider.of<BookShop>(context, listen: false);
  final cartItems = bookShop.userCart;

  if (cartItems.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Cart is empty!")));
    return;
  }

  for (var book in cartItems) {
    final newOrder = OrderBook(
      bookId: book.id!,
      bookTitle: book.title,
      bookPrice: book.price,
      orderDate: DateTime.now().toIso8601String(), 
    );

    await FirebaseService.insertOrder(newOrder);
  }

  bookShop.clearCart();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Purchase successful!")));
  setState(() {});
}


  @override
  Widget build(BuildContext context) {
    return Consumer<BookShop>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            // heading
            Text('Your Cart', style: TextStyle(fontSize: 20),),
        
            // List of cart items
            Expanded(
              child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, index) {
                  // get the individual items (Accessing user cart)
                  Book eachBook = value.userCart[index];  

                  // return Book Tile
                  return BookTile(
                    book: eachBook, 
                    onTap: () => removeItemFromCart(eachBook), 
                    trailing: Icon(Icons.delete));
            }
            )
            ),
            // pay button
            MaterialButton(
              child: Container(
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Pay Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onPressed: payNow, // Trigger payment function
            )
          ],
        ),
      ),
    )
    );
  }
}


/*✅ This code will:

1.Loop through cart items and insert each book into the orders table.
2.Clear the cart after successful purchase.
3.Show a confirmation message to the use
*/
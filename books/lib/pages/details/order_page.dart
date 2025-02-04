import 'package:books/models/book.dart';
import 'package:books/models/book_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  final Book book;
  const OrderPage({super.key, required this.book});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // add to cart
  void addToCart() {
    // firstly, add to cart
    Provider.of<BookShop>(context, listen: false).addItemToCart(widget.book);

    // direct user back to shop page
    Navigator.pop(context);
    //let the user know it add been successfully added
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Success!"),
        content: const Text("Book has be added to your cart."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text("OK!"))
        ],
    ),
    );
  }

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.title),
        centerTitle: true,
        backgroundColor: Colors.brown[700],
        ),
      backgroundColor: Colors.brown[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
            //book image
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      offset: const Offset(0, 5),  // offset(dx,dy)
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.book.imagePath,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    ),
                ),
              ),
              const SizedBox(height: 20,),
              

            // book description you should use column
              //book Title:
              Text(
                widget.book.title,
                style: const TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
              ),

              // Author:
              Text(
                "by ${widget.book.author}",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 10,),

              // book price
              Text(
                "Price: \$${widget.book.price}",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20,),

              

              
              // Add to cart button
              MaterialButton(
                onPressed: addToCart,
                color: Colors.brown[700],
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                    ),
                ),
                ),
              

              
              // book reviews
              
              
          
            // add to cart button
            MaterialButton(
              child: Text(
                'Add to cart',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {}
              )
          
          ],
          ),
        ),
      ),
    );
  }
}
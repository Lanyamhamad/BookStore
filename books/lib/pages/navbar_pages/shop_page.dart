import 'package:books/components/book_tile.dart';
import 'package:books/models/book.dart';
import 'package:books/models/book_shop.dart';
import 'package:books/pages/details/order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  
  
  // user selected a drink, go to order page
  void gotoOrderPage(Book book) {
    // navigate to order page
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OrderPage(
                  book: book,
                  // onOrder: () => addToCart(book), // replace with addToCart method
                )
                ));
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<BookShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // heading message
                    const Text(
                      "which book do you want ?",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // list of books to buy
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.bookShop.length,
                            itemBuilder: (context, index) {
                              // get individual book
                              Book eachBook = value.bookShop[index];

                              // return the title of the book
                              return BookTile(
                                book: eachBook,
                                onTap: () => gotoOrderPage(eachBook),
                                trailing: Icon(Icons.arrow_forward),
                              );
                            }
                            )
                            )
                  ],
                ),
              ),
            ));
  }
}

import 'package:books/pages/aboutus_page.dart';
import 'package:books/pages/all_page.dart';
import 'package:books/pages/cart_page.dart';
import 'package:books/pages/home_page.dart';
import 'package:books/pages/order_history_page.dart';
import 'package:books/pages/shop_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'Bookstore App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AllPage()));

        },
      ),
      ListTile(
        leading: const Icon(Icons.book),
        title: const Text('My Books'),
        onTap: () {
          // Navigate to my books
        },
      ),
      ListTile(
        leading: const Icon(Icons.video_library),
        title: const Text('Books List'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ShopPage()));     
        },
      ),
      ListTile(
        leading: const Icon(Icons.search),
        title: const Text('cart list'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));

        },
      ),
      ListTile(
        leading: const Icon(Icons.info),
        title: const Text('About Us'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));

        },
      ),
      ListTile(
        leading: const Icon(Icons.history),
        title: const Text('Order History'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryPage()));
        },
      )
    ],
  ),
);
  }
}
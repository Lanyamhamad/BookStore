import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:books/pages/drawer_pages/aboutus_page.dart';
import 'package:books/pages/navbar_pages/home_page.dart';
import 'package:books/pages/navbar_pages/cart_page.dart';
import 'package:books/pages/drawer_pages/order_history_page.dart';
import 'package:books/pages/navbar_pages/shop_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/logo.svg', // Replace with your SVG file path
                  height: 80,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bookstore App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
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
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Books List'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShopPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
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
          ),
        ],
      ),
    );
  }
}

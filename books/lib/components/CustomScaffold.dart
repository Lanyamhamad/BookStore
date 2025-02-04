import 'package:books/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:books/pages/drawer_pages/aboutus_page.dart';
import 'package:books/pages/navbar_pages/home_page.dart';
import 'package:books/pages/navbar_pages/cart_page.dart';
import 'package:books/pages/drawer_pages/order_history_page.dart';
import 'package:books/pages/navbar_pages/shop_page.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body; // The main content of each page

  const CustomScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Store',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 24.0,
                color: Colors.black, // Adjust color as needed
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open Drawer
              },
            ),
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(), // Drawer component
      body: body,
    );
  }
}

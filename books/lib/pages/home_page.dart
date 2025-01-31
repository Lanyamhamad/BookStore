import 'package:books/components/bottom_nav_bar.dart';
import 'package:books/components/drawer.dart';
import 'package:books/const.dart';
import 'package:books/pages/all_page.dart';
import 'package:books/pages/cart_page.dart';
import 'package:books/pages/shop_page.dart';
import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {  
  // navigate bottom bar
  int _selectedIndex = 0;   //0 or 1
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  //pages
  final List<Widget> _pages = [        // The selected index (_selectedIndex) determines which page is displayed
    // all page
    AllPage(),

    // shop page
    ShopPage(),

    // cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],   // Displays the selected page.
    );
  }
}
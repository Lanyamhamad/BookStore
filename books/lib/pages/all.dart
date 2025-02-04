import 'package:books/components/bottom_nav_bar.dart';
import 'package:books/components/drawer.dart';
import 'package:books/const.dart';
import 'package:books/pages/navbar_pages/home_page.dart';
import 'package:books/pages/navbar_pages/cart_page.dart';
import 'package:books/pages/navbar_pages/shop_page.dart';
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


// this is method that returns an AppBar widget, and it 
  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Book Store',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 24.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },        
            ),
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10) 
          ),
        ),
      ),
      // actions: [
      //   GestureDetector(
      //     onTap: () {
      //       // Future actions (e.g., settings, notifications)
      //     },
          // child: Container(
          //   margin: EdgeInsets.all(10),
          //   alignment: Alignment.center,
          //   width: 37,
            // child: IconButton(
            //   icon: Icon(
            //     Icons.menu,
            //     size: 24.0,
            //     ),
            //   onPressed: () {},
            // ),
      //     ),
      //   ),
      // ],
    );
  }

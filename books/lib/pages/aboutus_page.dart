import 'package:books/components/drawer.dart';
import 'package:books/pages/home_page.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: MyDrawer(),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Our Bookstore',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Welcome to our online bookstore! We offer a wide collection of books in various genres, '
              'including programming, fiction, non-fiction, and more. Our mission is to provide high-quality books '
              'at affordable prices with a seamless shopping experience.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Our mission is to create an easy-to-use and accessible platform for book lovers '
              'to discover, purchase, and enjoy their favorite books. We aim to bring knowledge and entertainment '
              'to everyone with a passion for reading.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

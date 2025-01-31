import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
          // Navigate to home
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
        title: const Text('My Courses'),
        onTap: () {
          // Navigate to my courses
        },
      ),
      ListTile(
        leading: const Icon(Icons.search),
        title: const Text('Search'),
        onTap: () {
          // Navigate to search
        },
      ),
      ListTile(
        leading: const Icon(Icons.info),
        title: const Text('About Us'),
        onTap: () {
          // Navigate to about us
        },
      ),
    ],
  ),
),
    );
  }
}
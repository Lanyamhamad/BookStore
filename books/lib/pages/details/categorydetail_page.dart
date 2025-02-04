import 'package:books/models/navigator/category_model.dart';
import 'package:books/pages/navbar_pages/book_list.dart';
import 'package:flutter/material.dart';
class CategoryDetailPage extends StatelessWidget {
  final CategoryModel category;
  
  const CategoryDetailPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Books & podcasts in ${category.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(title: Text('Books')),
          BookListPage(),
          ListTile(title: Text('podcasts')),
          
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/book_viewmodel.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookViewModel = Provider.of<BookViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Book List')),
      body: FutureBuilder(
        future: bookViewModel.loadBooks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading books'));
          } else {
            return ListView.builder(
              itemCount: bookViewModel.books.length,
              itemBuilder: (context, index) {
                final book = bookViewModel.books[index];
                return ListTile(
                  leading: Image.asset(book.imagePath, width: 50, height: 50),
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  trailing: Text('\$${book.price}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}

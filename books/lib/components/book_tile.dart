import 'package:books/models/book.dart';
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final Book book;
  void Function()? onTap;
  final Widget trailing;
  BookTile({super.key, required this.book, required this.onTap, required this.trailing,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          title: Text(book.title),
          subtitle: Text(book.author),
          leading: Image.asset(book.imagePath),
          trailing: trailing,
        ),
      ),
    );
  }
}

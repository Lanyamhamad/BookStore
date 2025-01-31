import 'package:flutter/material.dart';

class Book {
  int? id; // nullable for auto increament
  final String title;
  final String author;
  final double price;
  final String imagePath;
  final String pages;
  final String level;
  Color boxColor;
  bool viewIsSelected;


  Book({
    this.id,  // nullable 
    required this.title,
    required this.author,
    required this.price,
    required this.imagePath,
    required this.pages,
    required this.boxColor,
    required this.viewIsSelected,
    required this.level
  });
  static List < Book > getBooks() {
    List < Book > books = [];
    return books;
    }


  // convert object to map for sqlite
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'imagePath': imagePath,
      'price': price,
      'pages': pages,
      'level': level,
      'boxColor': boxColor,
      'viewIsSelected': viewIsSelected ? 1 : 0, // store as int 
    };
  }

  // convert map to object
  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'],
      title: map['title'],
      author: map['author'],
      imagePath: map['imagePath'],
      price: map['price'],
      pages: map['pages'],
      level: map['level'],
      viewIsSelected: map['viewIsSelected'] == 1, // Convert int to bool
      boxColor: Colors.grey, // Default color, since SQLite can't store Color
    );
  }
}
import 'package:flutter/material.dart';

class CategoryModel {

  final String name;
  final String iconPath;
  final Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'HTML',
        iconPath: 'assets/images/html.svg',
        boxColor: const Color(0xffFFE1B3),
      ),
    );

    categories.add(
      CategoryModel(
        name: 'CSS',
        iconPath: 'assets/images/css.svg',
        boxColor: const Color(0xffFCC8D1),
      ),
    );

    categories.add(
      CategoryModel(
        name: 'JavaScript',
        iconPath: 'assets/images/js.svg',
        boxColor: const Color(0xffD2E0FB),
      ),
    );

    categories.add(
      CategoryModel(
        name: 'Python',
        iconPath: 'assets/images/python.svg',
        boxColor: const Color(0xffC4DFAA),
      ),
    );

    return categories;
  }
}


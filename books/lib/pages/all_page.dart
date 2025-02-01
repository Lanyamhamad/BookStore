import 'package:books/components/drawer.dart';
import 'package:books/models/book.dart';
import 'package:books/models/category_model.dart';
import 'package:books/models/courses_model.dart';
import 'package:books/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class AllPage extends StatelessWidget {
  AllPage({super.key});

  List<CategoryModel> categories = [];
  List<Book> books = [];
  List<CourseModel> courses = [];

  void _getInitialInfo(){ 
    categories = CategoryModel.getCategories();
    books = Book.getBooks();
    courses = CourseModel.getCourses();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(context),
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _categoriesSection(context),
          const SizedBox(height: 40,),
          
          _coursesSection(),
          const SizedBox(height: 40,),
          
          _bookSection(),
          const SizedBox(height: 40,),

        ],
      ),
    );
  }

  Column _coursesSection() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
            child: Text(
              'Popular Courses', 
              style: TextStyle(
                color: Colors.black, 
                fontSize: 18,
                fontWeight: FontWeight.w600
                ),
                ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 240,
              child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: courses[index].boxIsSelected
                      ? const Color(0xff9DCEFF)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      courses[index].imagePath,
                      width: 100,
                      height: 100,
                    ),
                    Column(
                      children: [
                        Text(
                          courses[index].title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '${courses[index].level} | ${courses[index].duration} | ${courses[index].lessons}',
                          style: const TextStyle(
                            color: Color(0xff786F72),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 25),
            itemCount: courses.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }

  Column _bookSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Recommendation \nfor Books',
            style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,),
                  )
                  ),
                  
                  const SizedBox(height: 15,),
                  
                  Container(       
                    height: 240,
                    child: ListView.separated(
                      itemBuilder: (context,index){
                        return Container(
                          width: 210,
                          decoration: BoxDecoration(
                            color: books[index].viewIsSelected 
                              ? const Color(0xff9DCEFF)
                              : Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                books[index].imagePath,
                                width: 100,
                                height: 100,
                              ),
                              
                              Column(
                                children: [
                                  Text(
                                    books[index].title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 16
                                    ),
                                  ),
                                  Text(
                                    '${books[index].level} | ${books[index].author} | ${books[index].pages}',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 88, 87, 87), 
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400
                                      ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 130,
                                child: Center(    // change this test to navigate to home page 
                                  child: Text(
                                    'View',
                                    style: TextStyle(
                                      color: books[index].viewIsSelected ? Colors.white : Color(0xffc58BF2),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14
                                    ),
                                  ),
                                ),

                                //YOU CAN REMOVE THIS 
                                decoration: BoxDecoration(
                                  
                                  gradient: LinearGradient(
                                    colors: [
                                      books[index].viewIsSelected ? Color(0xff9DCEFF) : Colors.transparent,
                                      books[index].viewIsSelected ? Color(0xff92A3FD) : Colors.transparent,
                                    
                              
                            ]
                            ),
                            borderRadius:BorderRadius.circular(50) 
                          ),
                        )

                      ],
                    ),
                  );
                }, 
                separatorBuilder: (context, index) => SizedBox(width: 25,), 
                itemCount: books.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20
                ),
                ),

            )
          ],
        );
  }
                 
  Column _categoriesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Categories',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          height: 120,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20, 
              right: 20
              ),
            separatorBuilder: (context, index) => SizedBox(width: 25,),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryDetailPage(category: categories[index]),
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: categories[index].boxColor,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(categories[index].iconPath),
                      Text(
                        categories[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CategoryDetailPage extends StatelessWidget {
  final CategoryModel category;
  
  CategoryDetailPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Books & Courses in ${category.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(title: Text('Books')),
          // Fetch and display books related to the selected category
          ListTile(title: Text('Courses')),
          // Fetch and display courses related to the selected category
        ],
      ),
    );
  }
}

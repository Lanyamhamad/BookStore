class CourseModel {
  final String title;
  final String instructor;
  final String imagePath;
  final String level;
  final String duration;
  final String lessons;
  final bool boxIsSelected;

  CourseModel({
    required this.title,
    required this.instructor,
    required this.imagePath,
    required this.level,
    required this.duration,
    required this.lessons,
    required this.boxIsSelected,

  });

static List<CourseModel> getCourses() {
    List<CourseModel> courses = [];

    courses.add(
      CourseModel(
        title: 'HTML Basics',
        imagePath: 'assets/images/html_course.png',
        level: 'Beginner',
        instructor: 'alexander',
        duration: '2 hours',
        lessons: '12 lessons',
        boxIsSelected: true, 
      ),
    );

    courses.add(
      CourseModel(
        title: 'CSS Styling',
        imagePath: 'assets/images/css_course.png',
        level: 'Intermediate',
        instructor: 'tim',
        duration: '3 hours',
        lessons: '15 lessons',
        boxIsSelected: false,
      ),
    );

    courses.add(
      CourseModel(
        title: 'JavaScript Fundamentals',
        imagePath: 'assets/images/js_course.png',
        level: 'Beginner',
        instructor: 'emily',
        duration: '4 hours',
        lessons: '20 lessons',
        boxIsSelected: false,
      ),
    );

    return courses;
  }
}
class podcastModel {
  final String title;
  final String instructor;
  final String imagePath;
  final String level;
  final String duration;
  final String lessons;
  final bool boxIsSelected;

  podcastModel({
    required this.title,
    required this.instructor,
    required this.imagePath,
    required this.level,
    required this.duration,
    required this.lessons,
    required this.boxIsSelected,

  });

static List<podcastModel> getpodcasts() {
    List<podcastModel> podcasts = [];

    podcasts.add(
      podcastModel(
        title: 'HTML Basics',
        imagePath: 'assets/images/html_podcast.png',
        level: 'Beginner',
        instructor: 'alexander',
        duration: '2 hours',
        lessons: '12 lessons',
        boxIsSelected: true, 
      ),
    );

    podcasts.add(
      podcastModel(
        title: 'CSS Styling',
        imagePath: 'assets/images/css_podcast.png',
        level: 'Intermediate',
        instructor: 'tim',
        duration: '3 hours',
        lessons: '15 lessons',
        boxIsSelected: false,
      ),
    );

    podcasts.add(
      podcastModel(
        title: 'JavaScript Fundamentals',
        imagePath: 'assets/images/js_podcast.png',
        level: 'Beginner',
        instructor: 'emily',
        duration: '4 hours',
        lessons: '20 lessons',
        boxIsSelected: false,
      ),
    );

    return podcasts;
  }
}
import 'package:flutter/material.dart';

class PodcastModel {
  final String title;
  final String instructor;
  final String imagePath;
  final String level;
  final String lessons;
  final String description;
  final String link;
  Color boxColor;
  final bool boxIsSelected;

  PodcastModel({
    required this.title,
    required this.instructor,
    required this.imagePath,
    required this.level,
    required this.lessons,
    required this.description,
    required this.boxColor,
    required this.link,
    required this.boxIsSelected,

  });

static List<PodcastModel> getpodcasts() {
    List<PodcastModel> podcasts = [];

    podcasts.add(
      PodcastModel(
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
      PodcastModel(
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
      PodcastModel(
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
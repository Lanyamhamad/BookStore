import 'package:books/models/navigator/podcasts_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class PodcastDetailPage extends StatelessWidget {
  final PodcastModel podcasts;

  const PodcastDetailPage({required this.podcasts});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(podcasts.title)),
      body: Container(
        width: 210,
        decoration: BoxDecoration(
          color: podcasts.boxColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          children: [
            Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      podcasts.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                      'The instructor is: ${podcasts.instructor}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 59, 57, 58),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                                        ),
                    ),
                  Text(
                    ' ${podcasts.level} | ${podcasts.lessons}',
                    style: const TextStyle(
                      color: Color(0xff786F72),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                    Text(
                    'description of video: ${podcasts.description}',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 59, 57, 58),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  FilledButton(onPressed: () async{
                    String url = podcasts.link;
                    if (!await launchUrl(Uri.parse(url)))   //agar launchurl akam eshi nakrd
                    {
                      throw 'could not launch the $url';
                    }
                    
                  }, child: Text('${podcasts.link}')),
                ],
              ),
          ], 
        ),
      ),

    );
  }
}
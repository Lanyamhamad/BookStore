import 'package:books/components/drawer.dart';
import 'package:books/pages/all.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  TextEditingController smsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: MyDrawer(),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'About Our Bookstore',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Welcome to our online bookstore! We offer a wide collection of books in various genres, '
              'including programming, fiction, non-fiction, and more. Our mission is to provide high-quality books '
              'at affordable prices with a seamless shopping experience.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Our mission is to create an easy-to-use and accessible platform for book lovers '
              'to discover, purchase, and enjoy their favorite books. We aim to bring knowledge and entertainment '
              'to everyone with a passion for reading.',
              style: TextStyle(fontSize: 16.0),
            ),
            FilledButton(onPressed: () async {
              final Uri callURL = Uri(scheme: 'tel',path: '0770123456789');
              if (!await launchUrl(callURL))
              {
                throw 'could not tel';
              }
            }, child: Text('Call Someone')),


          FilledButton(onPressed: () async{
            final Uri sendMail = Uri(scheme:'mailto', path: 'bookstore@gmail.com', query: 'subject=Topic&body=slaw kak flan...');    //am subject'a constant'a
            if (!await launchUrl(sendMail))
            {
              throw 'could not send mail';
            }
          }, child: Text('Send Mail')),

          
          FilledButton(onPressed: () async{
            final Uri sendSMS = Uri(scheme:'sms', path: '0770123456789', queryParameters: <String , String>{    // ama har wakw dictonari esh aka 
              'body': Uri.encodeComponent(smsController.text),
              //key : value
            });
            if (!await launchUrl(sendSMS))
            {
              throw 'could not sms';
            }
          }, child: Text('Send SMS')),
          TextField(controller: smsController,)

          ],
        ),
          ],
        )
      ),
    );
  }
}

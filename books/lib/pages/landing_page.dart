
import 'package:books/pages/all_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Landing extends StatefulWidget{
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}
class _LandingState extends State<Landing>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,   //to stick them in the left
          children: [
      SvgPicture.asset("assets/images/Webinar-amico.svg"),

      SizedBox(height: 30.0,),

      
      Text(
        "Order your\nfavourites Book",
        style: TextStyle(
          color: Colors.black,
          fontSize: 34.0, 
          fontWeight: FontWeight.bold)
          ), 
      SizedBox(height: 10.0,),    
      Text(
        "Read new Book and try to be aware ",
        style: TextStyle(
          color: Colors.black45, 
          fontSize: 18.0, 
          fontWeight: FontWeight.w500)
          ),
        SizedBox(height: 90.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AllPage()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 30.0, top: 10.0,bottom: 10.0 ,right: 20.0),
                decoration: BoxDecoration(color: Color(0xFFFFCC3F), borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
                child: Row(
                  children: [
                    Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0, 
                        fontWeight: FontWeight.w500),            
                    ),
                    SizedBox(width: 20.0,),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
          ],
        )
     
     
      ],),),
    );
  }
}
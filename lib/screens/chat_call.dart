
import 'package:crypt2call/screens/chatmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chatcall extends StatefulWidget {
  const chatcall({super.key, required this. chatmodel});
  final chatmodel;

  @override
  State<chatcall> createState() => _chatcallState();
}

class _chatcallState extends State<chatcall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: CircleAvatar(
                   backgroundColor: Color(0xff001350),
                    child: Icon(CupertinoIcons.arrow_down_right_arrow_up_left,color: Colors.white,),
                  ),
                ),

                 Padding(
                   padding: const EdgeInsets.only(right: 120),
                   child: Column(
                     children: [
                       Text("Jacob",style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)),),
                       Text('Ringing',style: GoogleFonts.poppins(fontSize:9,fontWeight:FontWeight.w400,color:Color(0xff001350))),
                     ],
                   ),
                 ),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff001350),
                    child: Icon(Icons.person_add,color: Colors.white,),
                  ),
                )
              ],
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 180),
                child: Image.asset('assets/jcall.png'),
              ),
              Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), // Optional: Add rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      offset: Offset(0, 4), // Horizontal and vertical offset
                      blurRadius: 10, // Blur radius
                      spreadRadius: 1, // Spread radius
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xff001350),
                        child: Icon(Icons.more_horiz_outlined,color: Colors.white,),
                      ),
                      SizedBox(width: 25,),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xff001350),
                        child: Icon(CupertinoIcons.video_camera_solid,color: Colors.white,),
                      ),
                      SizedBox(width: 25,),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xff001350),
                        child: Icon(CupertinoIcons.speaker_1_fill,color: Colors.white,),
                      ),
                      SizedBox(width: 25,),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xff001350),
                        child: Icon(CupertinoIcons.mic_slash_fill,color: Colors.white,),
                      ),
                      SizedBox(width: 25,),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xffdc03035),
                        child: Icon(Icons.call_end,color: Colors.white,),
                      ),


                    ],
                  ),
                ),
              ),


            ],
          ),

        ),


      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class updateview extends StatefulWidget {
  const updateview({super.key});

  @override
  State<updateview> createState() => _updateviewState();
}

class _updateviewState extends State<updateview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.arrow_back,color: Color(0xff001350),),
              SizedBox(width: 10,),
              Image.asset('assets/polaa.png'),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pola Martin',style: GoogleFonts.poppins(
                      fontSize:24,fontWeight:FontWeight.w600,color:Color(0xff001350)),),
                  Text('58 minutes ago',style: GoogleFonts.poppins(
                      fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)),),
                ],
              ),
              SizedBox(width: 82,),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined,color: Color(0xff001350),))
            ],
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/view.png',fit: BoxFit.cover,),
            Positioned(
              top: 690,
                child: Container(
              height:70,
              width: 395,
              decoration: BoxDecoration(
                color: Colors.white
              ),
                  child: Center(
                    child: Container(
                      height: 35,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff001350)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 30,bottom: 8),
                          border: InputBorder.none,
                          hintText: "Reply",
                          hintStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)
                        ),
                      ),
                    ),
                  ),

            ))
          ],

        )

      ),

    );
  }
}



import 'package:crypt2call/screens/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>settings()));
                },
                  child: Icon(Icons.arrow_back_ios_sharp,color: Color(0XFF001350),)),
              SizedBox(width: 5,),
              Text('Account',style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.w700,color:Color(0XFF001350)),),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Color(0XFF001350)
                        ),
                        child: Icon(Icons.security,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Security notifications",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Color(0XFF001350)
                        ),
                        child: Icon(Icons.lock_clock_outlined,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Passkeys",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Color(0XFF001350)
                        ),
                        child: Icon(Icons.email_rounded,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Email address",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Color(0XFF001350)
                        ),
                        child: Icon(Icons.verified_rounded,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Two-step verification",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Color(0XFF001350)
                        ),
                        child: Icon(Icons.mobile_screen_share,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Change number",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Color(0XFF001350)
                        ),
                        child: Icon(Icons.error_outline,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Request account info",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Color(0XFF001350)
                        ),
                        child: Icon(CupertinoIcons.person_add_solid,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Add account",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Color(0XFF001350)
                        ),
                        child: Icon(CupertinoIcons.delete_solid,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Delete account",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),)
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

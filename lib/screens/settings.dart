

import 'package:crypt2call/screens/account_settings.dart';
import 'package:crypt2call/screens/home_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool isChecked = false;

  void toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
         toolbarHeight: 150,
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                      },
                        child: Icon(Icons.arrow_back_ios_sharp,color: Color(0XFF001350),)),
                    SizedBox(width: 5,),
                    Text('Settings',style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.w700,color:Color(0XFF001350)),),
                    SizedBox(width: 185,),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 15,
                              offset: Offset(0, 0),
                            ),

                          ]
                      ),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Color(0xFFF1F1F1),
                        child: Icon(Icons.search,color: Color(0xFF001350),),
                      ),
                    ),

                  ],

                ),
                SizedBox(height: 10,),
                Row(
                  children: [

                    Image(image: AssetImage('assets/image1.png')),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Text('Jacob',style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.w600),),
                        ),
                        Text('-All the happy faces are not happy-',style: GoogleFonts.poppins(fontSize:10),)
                      ],
                    ),
                    SizedBox(width: 40,),
                    Icon(Icons.qr_code,color: Color(0XFF001350),),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        showModalBottomSheet(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                          ),
                            context: context,
                            builder: (BuildContext context){
                              return ClipRRect(
                                borderRadius:BorderRadius.vertical(top: Radius.circular(30)) ,
                                child: Container(
                                  color: Color(0xFF001350),
                                  child: SizedBox(
                                    height: 180,
                                    child: Container(
                                      margin: EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset('assets/image1.png'),
                                             SizedBox(width: 10,),
                                             Column(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Padding(
                                                   padding: const EdgeInsets.only(right: 43),
                                                   child: Text('Jacob',style: GoogleFonts.poppins(fontSize:15,color:Colors.white),),
                                                 ),
                                                 Text('+61 25252225',style: GoogleFonts.poppins(color:Colors.white),)
                                               ],
                                             ),
                                              SizedBox(width: 140,),
                                      GestureDetector(
                                        onTap: toggleCheckbox,
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 300),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: isChecked ? Colors.white : Colors.grey[200],
                                            border: Border.all(
                                              color: isChecked ? Colors.white : Colors.grey.shade200,
                                              width: 2,
                                            ),
                                          ),
                                          child: Center(
                                            child: isChecked
                                                ? Icon(
                                              Icons.check,
                                              color: Color(0xff001350),
                                            )
                                                : null,
                                          ),
                                        ),
                                      )

                                            ],

                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30,left: 15),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white
                                                  ),
                                                  child:

                                                      Icon(Icons.add,color: Color(0XFF001350),),

                                                ),
                                                SizedBox(width: 20,),
                                                Text('Add Account',style: GoogleFonts.poppins(fontSize:12,color:Colors.white,fontWeight:FontWeight.w500),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                ),
                              );

                        });
                      },
                        child: Icon(Icons.arrow_drop_down_circle_outlined,color: Color(0xFF001350),))
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>account()));
                },
                child: Container(
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
                          child: Icon(Icons.key,color: Colors.white,),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children: [
                            Text("Account",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                            Text('Security notifications, change number',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                          ],
                        )
                      ],
                    ),
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
                        child: Icon(Icons.lock,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Privacy",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                          Text('Block contacts,diasappearing messages',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        ],
                      )
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
                        child: Icon(Icons.person,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Avatar",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                          Text('Create, edit, profile, photo',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        ],
                      )
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
                        child: Icon(CupertinoIcons.heart,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Favourites",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                          Text('Add, reorder, remove',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        ],
                      )
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
                        child: Icon(CupertinoIcons.chat_bubble_2,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Chats",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                          Text('Theme, wallpapers, chat history',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        ],
                      )
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
                        child: Icon(CupertinoIcons.bell_fill,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Notifications",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                          Text('Message, group & call tones',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        ],
                      )
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
                        child: Icon(CupertinoIcons.arrow_2_circlepath_circle,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Storage and data",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                          Text('Network usage, auto-download',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        ],
                      )
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
                        child: Icon(CupertinoIcons.globe,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("App language",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                          Text('English, (device language)',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        ],
                      )
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
                        child: Icon(Icons.help_outline_outlined,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Help",style: GoogleFonts.poppins(fontSize:14,color:Colors.black,fontWeight:FontWeight.w500),),
                          Text('Help centre, contact us, privacy policy',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        ],
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}

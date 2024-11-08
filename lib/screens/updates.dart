
import 'package:crypt2call/screens/status_privacy.dart';
import 'package:crypt2call/screens/update_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class updates extends StatelessWidget {
   const updates({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
        toolbarHeight: 130,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 240),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PopupMenuButton(
                    offset: Offset(10, 33),
                    elevation: 0,
                   color: Color(0xff001350),
                    itemBuilder: ( BuildContext context) {
                      return[
                        PopupMenuItem(
                          value: 'Option 1',
                          child:  GestureDetector(
                            onTap: (){
                              Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context)=>statusprivacy()));

                            },
                              child: Text('Status privacy',style: TextStyle(color: Colors.white),)),
                        ),

                        PopupMenuItem(
                          value: 'Option 1',
                          child:  Text('Create channel',style: TextStyle(color: Colors.white),),
                        ),
                        PopupMenuItem(
                          value: 'Option 1',
                          child:  Text('Settings',style: TextStyle(color: Colors.white),),
                        ),

                      ];

                    },
                    child: Container(
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
                        child: Icon(Icons.more_horiz_outlined,color: Color(0xFF001350),),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Updates',style: GoogleFonts.poppins(fontSize:30,fontWeight:FontWeight.w700,color:Color(0xff001350)),),
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 0,
                                offset: Offset(0, 0)

                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffe9e9e9)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 5),
                            child: Stack(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Color(0xFF001350),
                                    child: Image.asset('assets/ok.png'),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  left: 20,
                                  child:CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Color(0xFF001350),
                                    child: Icon(Icons.add,color: Colors.white,size: 17,),
                                  ) ,)
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 128),
                            child: Text('Add status',style: GoogleFonts.poppins(
                                fontSize:14,fontWeight:FontWeight.w600,color:Color(0xff001350)),),
                          )
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffe9e9e9)
                      ),
                      child: Stack(
                        children: [
                          GestureDetector(
                              onTap:(){
                                Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context)=>updateview()));

                              },
                              child: Image.asset('assets/status1.png',)),
                          Positioned(
                              child: Image.asset('assets/status2.png'))
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffe9e9e9)
                      ),
                      child: Stack(
                        children: [
                          Image.asset('assets/status3.png'),
                          Positioned(
                              child: Image.asset('assets/person.png'))
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffe9e9e9)
                      ),
                      child: Stack(
                        children: [
                          Image.asset('assets/status1.png'),
                          Positioned(
                              child: Image.asset('assets/person.png'))
                        ],
                      ),

                    ),

                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView(

              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Channels',style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.w700,color:Color(0xff001350)),),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffff914d)
                            ),
                            child: Center(child: Text('Explore',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w600,color:Colors.white),)),
                          )
                        ],
                      ),

                      SizedBox(height: 13,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            child: Icon(Icons.person),
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Kane Williamson",style: GoogleFonts.poppins(fontSize:17,fontWeight:FontWeight.w600,color:Color(0xff001350)),),
                              Text('The channel "Kane Williamson" was created',style:        GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)),)
                            ],
                          ),
                          Spacer(),
                          Text('05/052024',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color:Color(0xff001350)),)
                        ],
                      ),

                      SizedBox(height: 13,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            child: Icon(Icons.person),
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Kane Williamson",style: GoogleFonts.poppins(fontSize:17,fontWeight:FontWeight.w600,color:Color(0xff001350)),),
                              Text('The channel "Kane Williamson" was created',style:        GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)),)
                            ],
                          ),
                          Spacer(),
                          Text('05/052024',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color:Color(0xff001350)),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text('Find Channels to Follow',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w600,color:Color(0xff001350))),
                      ),
                      Row(
                        children: [
                          Image(image: AssetImage('assets/c2.png')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Crpt2Call',style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w600,color:Color(0xff001350))),
                              Text('189M Followers',style: GoogleFonts.poppins(fontSize:12.5,fontWeight:FontWeight.w400,color:Color(0xff001350)),)

                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffff914d)
                            ),
                          child: Center(child: Text('Explore',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w600,color:Colors.white),)),
                     )
                      ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          children: [
                            Image(image: AssetImage('assets/ytube.png')),
                            SizedBox(width: 12,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Youtube',style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w600,color:Color(0xff001350))),
                                Text('500M Followers',style: GoogleFonts.poppins(fontSize:12.5,fontWeight:FontWeight.w400,color:Color(0xff001350)),)

                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 24,
                              width: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffff914d)
                              ),
                              child: Center(child: Text('Explore',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w600,color:Colors.white),)),
                            )
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
        

    )
    );
    
  }
}

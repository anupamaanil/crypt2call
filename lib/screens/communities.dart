
import 'package:crypt2call/screens/alumni_group_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class communities extends StatefulWidget {
  const communities({super.key});

  @override
  State<communities> createState() => _communitiesState();
}

class _communitiesState extends State<communities> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
         toolbarHeight: 150,
         title: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text('Communities',style: GoogleFonts.poppins(
                     fontSize:24,fontWeight:FontWeight.w700,color:Color(0xFF001350)),),
                 SizedBox(width: 110,),
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
                     child: Icon(Icons.camera_alt_rounded,color: Color(0xFF001350),),
                   ),
                 ),
                 SizedBox(width: 10,),
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
                   child: PopupMenuButton(
                     offset:Offset(25, 18),
                     elevation: 0,
                     shadowColor: Colors.transparent,
                     color: Colors.transparent,
                     onSelected:(value){
                     },
                     itemBuilder: ( BuildContext context) {
                       return[
                         PopupMenuItem(
                           value: 'Option 1',
                           child:Container(
                             width: 190,
                             height: 35,
                             decoration: BoxDecoration(
                               color: Color(0xff001350), // Background color
                               borderRadius: BorderRadius.circular(8), // Rounded corners
                             ),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10),
                                   child: Text(
                                     'Settings',
                                     style: TextStyle(color: Colors.white), // Text color
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),

                       ];
                     },
                     child: CircleAvatar(
                       radius: 16,
                       backgroundColor: Color(0xFFF1F1F1),
                       child: Icon(Icons.more_horiz_outlined,color: Color(0xFF001350),),
                     ),
                   ),

                 ),
               ],
             ),
             SizedBox(height: 10,),
             Row(
               children: [
                 Stack(
                   children: [
                     Container(
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black.withOpacity(0.5),
                               spreadRadius: 0,
                               blurRadius: 8,
                               offset: Offset(0, 0),
                             ),
                           ]
                       ),
                       child: CircleAvatar(
                         radius: 30,
                         backgroundColor: Color(0xFF001350),
                         child: Icon(Icons.groups_sharp,color: Colors.white,size: 40,),
                       ),
                     ),
                     Positioned(
                       top: 40,
                         left: 38,
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               color: Colors.white
                             ),
                             shape: BoxShape.circle,
                             color: Color(0xff001350)
                           ),
                           child: Icon(Icons.add_sharp,color: Colors.white,size: 20,),

                         ))
                   ],
                 ),
                 SizedBox(width: 10,),
                 Text('New Community',style: GoogleFonts.poppins(
                     fontSize:20,fontWeight:FontWeight.w400,color:Color(0xff001350)),)
               ],
             ),
           ],
         ),
       ),
        body: Column(
          children: [
            Divider(
              thickness: 15,
              height: 20,
              color: Colors.grey.shade300,
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Image.asset('assets/community.png'),
                          SizedBox(width: 10,),
                          Text('ALUMNI Computer Science Dept UOC'),

                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffff914d),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10)
                            ),


                            child: Image.asset('assets/vector.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Announcements',style: GoogleFonts.poppins(fontSize:17,fontWeight:FontWeight.w500,color:Color(0xff001350)),),
                              Text('The Group “Computer science” was created',style: GoogleFonts.poppins(fontSize:11,fontWeight:FontWeight.w400,color:Color(0xff001350)))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text('05/05/2024'),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),

                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,

                          ),
                          SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Computer Science',style: GoogleFonts.poppins(fontSize:17,fontWeight:FontWeight.w500,color:Color(0xff001350)),),
                              Text('The Group “Computer science” was created',style: GoogleFonts.poppins(fontSize:11,fontWeight:FontWeight.w400,color:Color(0xff001350)))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18,),
                            child: Text('05/05/2024'),
                          )
                        ],
                      ),

                      SizedBox(height: 20,),

                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,

                          ),
                          SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Software Engineering',style: GoogleFonts.poppins(fontSize:17,fontWeight:FontWeight.w500,color:Color(0xff001350)),),
                              Text('The Group “Software Engineering” was created',style: GoogleFonts.poppins(fontSize:10.5,fontWeight:FontWeight.w400,color:Color(0xff001350)))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,),
                            child: Text('05/05/2024'),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context)=>Alumnigroupview()));
                        },
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Icon(Icons.arrow_forward_ios_outlined,size: 25,),
                            SizedBox(width: 15,),
                            Text('View all,',style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w600,color:Color(0xff001350)),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        thickness: 15,
                        height: 20,
                        color: Colors.grey.shade300,
                      ),

                    ],
                  ),
                );

                              },)),
            Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/c2.png'),
                              Text('Crpt2call community'),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xffff914d),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10)
                                ),


                                child: Image.asset('assets/vector.png'),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Announcements',style: GoogleFonts.poppins(fontSize:17,fontWeight:FontWeight.w500,color:Color(0xff001350)),),
                                  Text('The Group “Crypt2call Amassadors” was created',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Text('05/05/2024'),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),

                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,

                              ),
                              SizedBox(width: 4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Crypt2call Ambassadors',style: GoogleFonts.poppins(fontSize:17,fontWeight:FontWeight.w500,color:Color(0xff001350)),),
                                  Text('The Group “Computer science” was created',style: GoogleFonts.poppins(fontSize:11,fontWeight:FontWeight.w400,color:Color(0xff001350)))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15,),
                                child: Text('05/05/2024'),
                              )
                            ],
                          ),

                          SizedBox(height: 20,),


                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Icon(Icons.arrow_forward_ios_outlined,size: 25,),
                              SizedBox(width: 15,),
                              Text('View all,',style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w600,color:Color(0xff001350)),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Divider(
                            thickness: 15,
                            height: 20,
                            color: Colors.grey.shade300,
                          ),

                        ],
                      ),
                    );

                  },)),
          ],
        ),

      ),
    );
  }
}

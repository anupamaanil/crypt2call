
import 'package:crypt2call/screens/chats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class newgroup extends StatefulWidget {
  const newgroup({super.key});

  @override
  State<newgroup> createState() => _newgroupState();
}

class _newgroupState extends State<newgroup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor:Color(0xff001350) ,
              child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),
              onPressed: (){


              }),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 48,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8), // Optional: for rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Changes the position of the shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap:(){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>chats()));
                          },
                            child: Icon(Icons.arrow_back,color: Color(0xff001350),)),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Column(
                            children: [
                              Text('New group',style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400,color:Color(0xff001350)),),
                              Text('Add members',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)),),

                            ],
                          ),
                        ),
                        SizedBox(width: 230,),
                        Icon(Icons.search,color: Color(0xff001350),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Frequently contacted',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color:Color(0xff001350))),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                      height: 350,
                      width: 370,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3), // Changes the position of the shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10), // Optional: Add rounded corners
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10,left: 15),
                                  child:Image.asset('assets/pp.png'),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Jacob',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ),),
                                    Text('-All the happy faces are not happy-',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ))
                                  ],
                                )
            
            
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10,left: 15),
                                  child:Image.asset('assets/tt.png'),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Allesia',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ),),
                                    Text('Not available',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ))
                                  ],
                                )
            
            
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10,left: 15),
                                  child:Image.asset('assets/kk.png'),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Paul smith',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ),),
                                    Text('Busy',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10,left: 15),
                                  child:Image.asset('assets/tt.png'),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Allesia',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ),),
                                    Text('Not available',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ))
                                  ],
                                )
            
            
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10,left: 15),
                                  child:Image.asset('assets/tt.png'),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Allesia',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ),),
                                    Text('Not available',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ))
                                  ],
                                )
            
            
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10,left: 15),
                                  child:Image.asset('assets/tt.png'),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Allesia',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ),),
                                    Text('Not available',style: GoogleFonts.poppins(
                                        fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                    ))
                                  ],
                                )
            
            
                              ],
                            ),
                          ),
                          
                        ],
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('Contacts on Crpt2call',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color:Color(0xff001350)),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 300,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8), // Optional: for rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Changes the position of the shadow
                        ),
                      ],
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 23,top: 5),
                          child: Row(
                            children: [
                              Image.asset('assets/ok.png'),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Koke',style: GoogleFonts.poppins(
                                      fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                  ),),
                                  Text('Not available',style: GoogleFonts.poppins(
                                      fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23,top: 5),
                          child: Row(
                            children: [
                              Image.asset('assets/ok.png'),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Allesia',style: GoogleFonts.poppins(
                                      fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                  ),),
                                  Text('Not available',style: GoogleFonts.poppins(
                                      fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                  ))
                                ],
                              )

                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23,top: 5),
                          child: Row(
                            children: [
                              Image.asset('assets/ok.png'),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Allesia',style: GoogleFonts.poppins(
                                      fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                  ),),
                                  Text('Not available',style: GoogleFonts.poppins(
                                      fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)
                                  ))
                                ],
                              )


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
            
            
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

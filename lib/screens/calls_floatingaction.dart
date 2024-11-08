
import 'package:crypt2call/screens/calls.dart';
import 'package:crypt2call/screens/chat_call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class callfloat extends StatefulWidget {
  const callfloat({super.key});

  @override
  State<callfloat> createState() => _callfloatState();
}

class _callfloatState extends State<callfloat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          title:  SafeArea(
            child: Container(
              height: 31,
              width:370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 2, // How much the shadow spreads
                    blurRadius: 5, // The blur effect of the shadow
                    offset: Offset(0, 3), // The position of the shadow (x, y)
                  ),
                ],
              ),
              child:TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.dialpad,color: Color(0xff001350),size: 20,),
                    contentPadding: EdgeInsets.only(bottom: 10),
                    prefixIcon: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>calls()));
                        },
                        child: Icon(Icons.arrow_back,color: Color(0xff001350),size: 20)),
                    hintText: "Search name or number",
                    hintStyle: GoogleFonts.poppins(fontSize:16,fontWeight: FontWeight.w400,color: Color(0xff001350),          )
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Center(child: Text('Add upto 31 people',style:  GoogleFonts.poppins(fontSize:14,fontWeight: FontWeight.w400,color: Color(0xff001350)),)),
              SizedBox(height: 5,),
              Divider(color: Colors.grey,),
          
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                ),
                              ]
                          ),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xFF001350),
                            child: Icon(CupertinoIcons.link,color: Colors.white,),
                          ),
                        ),
                        SizedBox(width: 18,),
                        Text('New call link',style: GoogleFonts.poppins(
                            fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF001350)),)
                      ],
                    ),
                    SizedBox(height: 10,),
          
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                ),
                              ]
                          ),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xFF001350),
                            child: Icon(CupertinoIcons.heart_fill,color: Colors.white,),
                          ),
                        ),
                        SizedBox(width: 18,),
                        Text('New contact',style: GoogleFonts.poppins(
                            fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                        SizedBox(width: 150,),
                        Icon(Icons.qr_code,color: Color(0xff001350),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Text('Frequently contacted',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color:Color(0xff001350))),
                    ),
                    SizedBox(height: 15,),
          
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
                      padding: const EdgeInsets.only(right: 210,top: 10),
                      child: Text('Contacts on Crpyt2call',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color:Color(0xff001350))),
                    ),
                    SizedBox(height: 15,),
          
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
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

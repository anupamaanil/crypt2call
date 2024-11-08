import 'package:crypt2call/screens/chatmodel.dart';
import 'package:crypt2call/screens/new_group.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'alphabets.dart';

class NewChat extends StatefulWidget {
  const NewChat({super.key});


  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff001350),
        body:ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 1000,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffe5e5e5)
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 105),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('New chat',style: GoogleFonts.poppins(
                                  fontSize:24,fontWeight:FontWeight.w600,color:Color(0xff001350)),),
                              SizedBox(width: 100,),
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: Color(0xff001350),
                                child: GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.close,color: Colors.white,)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
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
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                  prefixIcon: Icon(Icons.search),
                                  hintText: "Search name or number"
                              ),

                            )
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 250,
                          width: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2), // Shadow color
                                spreadRadius: 2, // How much the shadow spreads
                                blurRadius: 10, // The blur effect of the shadow
                                offset: Offset(0, 4), // The position of the shadow (x, y)
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 10),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context)=>newgroup()));

                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle, // Make the container circular
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.2), // Shadow color
                                              spreadRadius: 2, // How much the shadow spreads
                                              blurRadius: 10, // The blur effect of the shadow
                                              offset: Offset(0, 4), // The position of the shadow (x, y)
                                            ),
                                          ],
                                        ),
                                        child: CircleAvatar(
                                          radius: 22, // Set the radius of the CircleAvatar
                                          backgroundColor: Color(0xff001350),
                                          child: Icon(Icons.group,color: Colors.white,),
                                        ),
                                      ),
                                      SizedBox(width: 8,),
                                      Text('New group',style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400),)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 10),
                                child: Row(

                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle, // Make the container circular
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2), // Shadow color
                                            spreadRadius: 2, // How much the shadow spreads
                                            blurRadius: 10, // The blur effect of the shadow
                                            offset: Offset(0, 4), // The position of the shadow (x, y)
                                          ),
                                        ],
                                      ),
                                      child: CircleAvatar(
                                        radius: 22, // Set the radius of the CircleAvatar
                                        backgroundColor: Color(0xff001350),
                                        child: Icon(Icons.person_add_sharp,color: Colors.white,),
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Text('New contact',style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400),)
                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle, // Make the container circular
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2), // Shadow color
                                            spreadRadius: 2, // How much the shadow spreads
                                            blurRadius: 10, // The blur effect of the shadow
                                            offset: Offset(0, 4), // The position of the shadow (x, y)
                                          ),
                                        ],
                                      ),
                                      child: CircleAvatar(
                                        radius: 22, // Set the radius of the CircleAvatar
                                        backgroundColor: Color(0xff001350),
                                        child: Icon(Icons.groups_sharp,color: Colors.white,),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text('New community',style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400),)
                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle, // Make the container circular
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2), // Shadow color
                                            spreadRadius: 2, // How much the shadow spreads
                                            blurRadius: 10, // The blur effect of the shadow
                                            offset: Offset(0, 4), // The position of the shadow (x, y)
                                          ),
                                        ],
                                      ),
                                      child: CircleAvatar(
                                        radius: 22, // Set the radius of the CircleAvatar
                                        backgroundColor: Color(0xff001350),
                                        child: Icon(Icons.branding_watermark_outlined,color: Colors.white,),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text(' New broadcast',style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400),)
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.only(right: 190),
                          child: Text('Frequently contacted',
                          style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w600,color:Color(0xff001350)),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 170,
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
                              ],
                          )

                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 190),
                          child: Text('Contacts on whatsApp',style: GoogleFonts.poppins(
                              fontSize:16,fontWeight:FontWeight.w600,color:Color(0xff001350)),

                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 50,
                          width: 370,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10), // Optional: for rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3), // Changes the position of the shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                Image.asset('assets/garg.png'),
                                SizedBox(width: 3,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Gary Anderson',style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w600,color:Color(0xff001350)),),
                                    Text('Busy',style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400),)
                                  ],
                                )


                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 370,
                          height: 1000,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3), // Changes the position of the shadow
                              ),
                            ],
                          ),

                          child:AlphabetListScrollView(
                              items:[
                                "Alice\n"
                                "Anjana\n"
                                "Aparna\n"
                                "Awjj\n"
                                    "Betty\n"
                                    "Cristy\n"
                                    "Dimple\n"
                                    "Emily\n"
                                    "Firoz\n"
                                    "George\n"
                                    "Harryn"
                                    "Indigo\n"
                                    "Joel\n"
                                    "Koke\n"
                                    "Leo\n"
                                    "Macbeth\n"
                                    "Noel\n"
                                    "Oakleyl\n"
                                    "Prajith\n"
                                    "Quiana\n"
                                    "Ramesh\n"
                                    "Saturn\n"
                                    "Titan\n"
                                    "Udaya\n"
                                    "Vimal\n"
                                    "Winter\n"
                                    "Xyleml\n"
                                    "Yadu krishnan\n"
                                    "Zara\n"

                              ]
                          ) ,
                        )

                      ],
                    ),
                  ),
                ),


              ],
            ),

          ],
        )
      ),
    );
  }
}
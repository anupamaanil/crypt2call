
import 'package:crypt2call/screens/calls_floatingaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class calls extends StatefulWidget {
  const calls({super.key});

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor:Color(0xff001350) ,
          child: Icon(Icons.add_call,color: Colors.white,),
            onPressed: (){

              Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context)=>callfloat()));


            }),
       appBar: AppBar(
         surfaceTintColor: Colors.transparent,
         toolbarHeight: 80,
         title: Row(
           children: [
             Text('Calls',style: GoogleFonts.poppins(
                 fontSize:24,fontWeight:FontWeight.w700,color:Color(0xFF001350)),),
             SizedBox(width: 180,),
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
               child: CircleAvatar(
                 radius: 16,
                 backgroundColor: Color(0xFFF1F1F1),
                 child: Icon(Icons.search,color: Color(0xFF001350),),
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
               child: CircleAvatar(
                 radius: 16,
                 backgroundColor: Color(0xFFF1F1F1),
                 child: Icon(Icons.more_horiz_outlined,color: Color(0xFF001350),),
               ),
             ),
           ],
         ),
       ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Favourites',style: GoogleFonts.poppins(
                    fontSize:20,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
                SizedBox(height: 5,),
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
                    Text('Add favourites',style: GoogleFonts.poppins(
                        fontSize:20,fontWeight:FontWeight.w400,color:Color(0XFF001350)),)
                  ],
                ),
                SizedBox(height: 20,),
                Text('Recent',style: GoogleFonts.poppins(
                    fontSize:20,fontWeight:FontWeight.w400,color:Color(0XFF001350)),),
               ListView.builder(
                 physics: BouncingScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: 10,
                   itemBuilder: (context, index) {
                     return ListTile(
                       leading: Image.asset('assets/ok.png'),
                       trailing: Icon(CupertinoIcons.phone,size: 25,color: Color(0xff001350),),
                       title: Text("Jacob",style: GoogleFonts.poppins(
                         fontSize:14,fontWeight:FontWeight.w400,color:(Color(0XFF001350))
                       ),),
                       subtitle: Row(
                         children: [
                           Icon(Icons.call_made,color:Colors.red),
                           Text("Jul 18 4:00 am",style: GoogleFonts.poppins(color:Color(0xff001350)),),
                         ],
                       ),
                     );
                   },)
              ],
            )
          ),
        ),
      ),

    );
  }
}




import 'package:crypt2call/screens/chat_call.dart';
import 'package:crypt2call/screens/chatmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class individualpage extends StatefulWidget {
  const individualpage({super.key,this.chatmodel});
  final chatmodel ;

  @override
  State<individualpage> createState() => _individualpageState();
}

class _individualpageState extends State<individualpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Color(0xff001350),
          leading: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,)),
              SizedBox(width: 2,),

              CircleAvatar(
                child: Image.asset(widget.chatmodel.imageUrl),
                radius: 15,
              ),
            ],
          ),
          title: Container(
            margin: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chatmodel.name,style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w600,color:Colors.white),),
                Text('last seen at 9:00Am',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color:Colors.white),)
              ],
            ),
          ),
          actions: [
           IconButton(onPressed: (){

           },
               icon: Icon(CupertinoIcons.video_camera,color: Colors.white,size: 29,)),
            IconButton(onPressed: (){


            },
                icon: InkWell(
                  onTap: (){
                    Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(
                        builder: (context)=>chatcall(chatmodel:chatmodel)));
                  },
                    child: Icon(CupertinoIcons.phone,color: Colors.white,))),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined,color: Colors.white,))

          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,),
          child:Column(
            children: [
              Container(
                height: 80,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      offset: Offset(0, 4), // Horizontal and vertical offset
                      blurRadius: 8, // Blur radius
                      spreadRadius: 1, // Spread radius
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 55,left: 45),
                      child: Icon(Icons.lock_outline,color: Color(0xff001350),size: 15,),
                    ),
                    Center(
                      child: Text('Messages and calls are end-to- end encrypted.\n\n'
                          ' No one outside of this chat, Not even Crypt2call,can\n\n '
                          'read or listen to them. Tap to learn more.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color(0xff001350)),),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   Container(
                    height: 72,
                    width: double.infinity,
                     decoration: BoxDecoration(
                         color: Color(0xff001350)
                     ),
                     child: Row(
                       children: [
                         CircleAvatar(
                           radius: 15,
                           backgroundColor: Colors.white,
                           child: Icon(Icons.add,color: Color(0xff001350),),
                         ),
                     SizedBox(width: 10,),
                     Container(
                       height: 33,
                       width: 280,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: TextFormField(
                         decoration: InputDecoration(
                           suffixIcon: IconButton(onPressed: (){},
                               icon: Icon(Icons.sticky_note_2,color:Color(0xff001350))),
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.all(10),
                           hintText: "Type a message",
                         ),

                       ),
                     ),
                         SizedBox(width: 4,),
                         CircleAvatar(
                           radius: 15,
                           backgroundColor: Colors.white,
                           child: GestureDetector(
                             onTap: (){

                             },
                               child: Icon(Icons.camera_alt_rounded,color: Color(0xff001350),)),
                         ),

                         SizedBox(width: 4,),
                         CircleAvatar(
                           radius: 15,
                           backgroundColor: Colors.white,
                           child: GestureDetector(
                             onTap: (){

                             },
                               child: Icon(Icons.mic_none_outlined,color: Color(0xff001350),)),
                         ),

                       ],
                     ),
                   )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

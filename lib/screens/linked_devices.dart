
import 'package:crypt2call/screens/home_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class linkeddevices extends StatefulWidget {
  const linkeddevices({super.key});

  @override
  State<linkeddevices> createState() => _linkeddevicesState();
}

class _linkeddevicesState extends State<linkeddevices> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                },
                  child: Icon(Icons.arrow_back_sharp,color: Color(0XFF001350),)),
              SizedBox(width: 5,),
              Text('Linked devices',style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w600,color:Color(0XFF001350)),),
            ],
          ),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 25,),
                Image.asset('assets/linkeddevicetitle.png'),
                SizedBox(height: 40,),
               RichText(
                   text: TextSpan(
                 text: "Use Crypt2call or web, Desktop, and other devices.",
                 style: GoogleFonts.poppins(
                     fontSize:10,fontWeight:FontWeight.w500,color:Color(0xff001350)),
                     children:
                       [
                         TextSpan(
                           text: "Learn more",
                             style: GoogleFonts.poppins(
                                 fontSize:10,fontWeight:FontWeight.w500,color:Color(0xffff914D))
            
                         )
                       ]
               )),
                SizedBox(height: 20,),
                SizedBox(
                  height: 49,
                  width: 368,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      backgroundColor: Color(0xff001350)
                    ),
                      onPressed: (){},
                      child: Text("Link a device",
                          style: GoogleFonts.poppins(
                              fontSize:20,fontWeight:FontWeight.w500,color:Colors.white))),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline,color: Color(0xff001350),size: 10,),
                    SizedBox(width: 3,),
                    RichText(text: TextSpan(
                      text: "Your personal messages are ",
                        style: GoogleFonts.poppins(
                            fontSize:9.5,fontWeight:FontWeight.w500,color:Color(0xff001350)),
                      children: [
                        TextSpan(
                          text: "end-to-end encrypted +",
                            style: GoogleFonts.poppins(
                                fontSize:9.5,fontWeight:FontWeight.w500,color:Color(0xffff914D))
                        ),
                        TextSpan(
                          text: "on all your devices",
                            style: GoogleFonts.poppins(
                                fontSize:9.5,fontWeight:FontWeight.w500,color:Color(0xff001350))
                        )
                      ]
            
                    ))
                  ],
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

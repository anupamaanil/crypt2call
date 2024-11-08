
import 'package:crypt2call/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  bool _isSecurePassword=true;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/title.png')),
                    Image(image: AssetImage('assets/dollar.png')),
                    Text('Welcome Onboard!',
                      style:GoogleFonts.poppins(
                          fontSize:25,
                        fontWeight:FontWeight.w500,
                        color:Color(0xFF001350),) ,),

                    SizedBox(height: 20,),

                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFB57C).withOpacity(0.9),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.3),
                            spreadRadius: 0, // Spread radius for the shadow
                            blurRadius: 4, // Blur radius for the shadow
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person,size: 20,),

                            contentPadding: EdgeInsets.only(left: 20,bottom: 10),
                          hintText: "Enter your Full name",
                          hintStyle: GoogleFonts.poppins(fontSize:13,
                              color:Colors.black,fontWeight:FontWeight.w500),
                          border: InputBorder.none
                        ),

                      ),
                    ),
                    SizedBox(height: 25,),

                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFB57C).withOpacity(0.9),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.3),
                            spreadRadius: 0, // Spread radius for the shadow
                            blurRadius: 4, // Blur radius for the shadow
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: TextFormField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_rounded,size: 20,),
                            contentPadding: EdgeInsets.only(left: 20,bottom: 10),
                            hintText: "Enter your Email Address",
                            hintStyle: GoogleFonts.poppins(fontSize:13,
                                color:Colors.black,fontWeight:FontWeight.w500),
                            border: InputBorder.none
                        ),

                      ),
                    ),
                    SizedBox(height: 25,),

                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFB57C).withOpacity(0.9),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.3),
                            spreadRadius: 0, // Spread radius for the shadow
                            blurRadius: 4, // Blur radius for the shadow
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: TextFormField(
                        controller: passwordcontroller,
                        obscureText: _isSecurePassword,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key, size: 20,),
                            suffixIcon:IconButton(onPressed: (){
                              setState(() {
                                _isSecurePassword = !_isSecurePassword;
                              });
                            }, icon:Icon(
                              _isSecurePassword ?
                              Icons.visibility_off :Icons.visibility,color: Colors.black,size: 20,)),
                            contentPadding: EdgeInsets.only(left: 20,bottom: 10),
                            hintText: "Create a Password",
                            hintStyle: GoogleFonts.poppins(fontSize:13,
                                color:Colors.black,fontWeight:FontWeight.w500),
                            border: InputBorder.none
                        ),

                      ),
                    ),
                    SizedBox(height: 25,),

                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFB57C).withOpacity(0.9),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.3),
                            spreadRadius: 0, // Spread radius for the shadow
                            blurRadius: 4, // Blur radius for the shadow
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: TextFormField(
                        obscureText: _isSecurePassword,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key, size: 20,),
                            suffixIcon:IconButton(onPressed: (){
                              setState(() {
                                _isSecurePassword = !_isSecurePassword;
                              });
                            }, icon:Icon(
                              _isSecurePassword ?
                              Icons.visibility_off :Icons.visibility,color: Colors.black,size: 20,)),

                            contentPadding: EdgeInsets.only(left: 20,bottom: 10),
                            hintText: "Confirm your Password",
                            hintStyle: GoogleFonts.poppins(fontSize:13,
                                color:Colors.black,fontWeight:FontWeight.w500),
                            border: InputBorder.none
                        ),

                      ),
                    ),
                    SizedBox(height: 80,),
                    SizedBox(
                      height: 44,
                      width: 220,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF001350),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                          onPressed: (){

                          }, child: Text("Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize:14,fontWeight:FontWeight.w700,
                      color:Color(0xFFFFFFFF)),)),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account ? ',style: GoogleFonts.poppins(fontSize:15,color:Color(0xFF001350),fontWeight:FontWeight.w500),),
                         GestureDetector(
                           onTap: (){

                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                           },
                             child: Text("Sign In",style: GoogleFonts.poppins(fontSize:15,color:Color(0xFF55847A),fontWeight:FontWeight.w500)))
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

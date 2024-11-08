import 'package:crypt2call/screens/chats.dart';
import 'package:crypt2call/screens/home_chat.dart';
import 'package:crypt2call/screens/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  bool _isSecurePassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Column(
                children: [
                  Image(image: AssetImage('assets/loginn.png')),
                  SizedBox(height: 20,),
                  Text("Welcome Back",
                    style: GoogleFonts.poppins(
                        fontSize:35,
                        fontWeight:FontWeight.w800,
                        color:Color(0xFF001350)),),
                 SizedBox(height: 40,),
                 Image(image: AssetImage('assets/logo (2).png')),
                  SizedBox(height: 10,),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 310),
                          child: Text("Email",
                          style: GoogleFonts.roboto(fontSize:15,
                          fontWeight:FontWeight.bold),),
                        ),

                        SizedBox(
                          width: 350,
                          child: TextFormField(
                            controller: emailcontroller,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_rounded,size: 20,),
                              contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            hintText: "Enter your email",
                              hintStyle: GoogleFonts.roboto(fontSize:13,color:Colors.grey),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 260),
                          child: Text('Forgot Email?',
                            style: GoogleFonts.roboto(fontSize:14,
                              fontWeight:FontWeight.w500,
                              color:Colors.grey,),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 275),
                          child: Text("Password",
                            style: GoogleFonts.roboto(fontSize:15,
                                fontWeight:FontWeight.bold),),
                        ),
                        SizedBox(height: 2,),
                        SizedBox(
                          width: 350,
                          child: TextFormField(
                            controller: passwordcontroller,
                            obscureText: _isSecurePassword,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.key, size: 20,),
                                suffixIcon:IconButton(onPressed: (){
                                  setState(() {
                                    _isSecurePassword = !_isSecurePassword;
                                  });
                                }, icon:Icon(
                                  _isSecurePassword ?
                                  Icons.visibility_off :Icons.visibility,color: Colors.black,size: 20,)),
                                contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                hintText: "Enter your password",
                                hintStyle: GoogleFonts.roboto(fontSize:13,color:Colors.grey),

                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 230),
                          child: Text('Forgot Password?',
                            style: GoogleFonts.roboto(fontSize:14,
                                fontWeight:FontWeight.w500,
                                color:Colors.grey,),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width:double.infinity, // Take full width of the screen
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 55, ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  )
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));


                              },

                              child: Text('Sign Up',
                                style: GoogleFonts.roboto(color:Color(0xFF000000),fontSize:16),)
                          ),
                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  backgroundColor: Color(0xFF001350)
                                ),
                                  onPressed: (){
                                    Navigator.push(context,
                                        _createRoute(
                                        Homepage(),
                                    ),
                                    );


                                  },
                                  child: Text("Login",
                                    style: GoogleFonts.roboto(color:Colors.white,fontSize:16),)))
                        ],
                      ),
                    ),
                  )
               ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Route _createRoute(Widget child) {


  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeOut;


      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
          position: animation.drive(tween),
      child: child,);
    },
  );
}

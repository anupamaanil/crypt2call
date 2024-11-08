
import 'package:crypt2call/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main()async{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

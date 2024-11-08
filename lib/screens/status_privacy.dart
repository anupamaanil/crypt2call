
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class statusprivacy extends StatefulWidget {
  const statusprivacy({super.key});

  @override
  State<statusprivacy> createState() => _statusprivacyState();
}

class _statusprivacyState extends State<statusprivacy> {
  String? _selectedOption;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            height: 48,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 0, // Spread radius
                  blurRadius: 3, // Blur radius
                  offset: Offset(0, 3), // Changes the position of the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(8), // Optional: To give rounded corners
            ),
            child: Row(
              children: [
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back, color: Color(0xff001350))),
                SizedBox(width: 5,),
                Text("Status privacy",style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w500,color:Color(0xff001350)),)
              ],
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 15, right: 20), // Adjust the right margin
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Who can see my status updates',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff001350),
                ),
              ),
              RadioListTile<String>(
                title: Text('My Contact',style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff001350),
                )),
                value: 'my_contact',
                groupValue: _selectedOption,
                contentPadding: EdgeInsets.zero, // Reduce padding
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: Text('My Contacts Except',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff001350),
                    )),
                value: 'my_contacts_except',
                groupValue: _selectedOption,
                contentPadding: EdgeInsets.zero, // Reduce padding
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: Text('Only share with',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff001350),
                    )),
                value: 'only share with',
                groupValue: _selectedOption,
                contentPadding: EdgeInsets.zero, // Reduce padding
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              Divider(
                color: Colors.grey,),
          SizedBox(height: 8,),
          Text(
            'Share my status updates across my account',
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff001350),
            ),
          ),
              Row(
                children: [
                  Image.asset('assets/ss.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Crpt2Call',style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w600,color:Color(0xff001350))),
                      Text('Tap to add your account',style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color:Color(0xff001350)),)

                    ],
                  ),
                ],
              ),
              Divider(color: Colors.grey.shade300,),
              Text('Changes to your privacy settings wont affect status updates that you have sent already',
                  style: GoogleFonts.poppins(
                      fontSize:8,fontWeight:FontWeight.w500,color:Color(0xff001350))),



            ],
          ),
        ),
      ),
    );
  }
}

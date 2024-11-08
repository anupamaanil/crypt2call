import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alumnigroupview extends StatefulWidget {
  const Alumnigroupview({super.key});

  @override
  State<Alumnigroupview> createState() => _AlumnigroupviewState();
}

class _AlumnigroupviewState extends State<Alumnigroupview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Color(0xff001350),
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    PopupMenuButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      color: Color(0xff001350),
                      icon: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ),
                      onSelected: (value) {},
                      itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem(
                            value: 'Option 1',
                            child: Text(
                              "Community info",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          PopupMenuItem(
                            value: 'Option 2',
                            child: Text(
                              "View members",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ];
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Image.asset('assets/uu.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ALUMNI Computer Science Dept UOC',
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            'Community . 41 groups',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        body: Column(
          children: [
            // Directly using ListView without Flexible or Spacer
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffff914d),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('assets/vector.png'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Announcements',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff001350)),
                          ),
                          Text(
                            'The Group “Computer science” was created',
                            style: GoogleFonts.poppins(
                                fontSize: 9.8,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff001350)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text('05/05/2024'),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.grey),
                  Text(
                    'The Groups you are in',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff001350),
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Computer Science',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff001350)),
                          ),
                          Text(
                            'The Group “Computer science” was created',
                            style: GoogleFonts.poppins(
                                fontSize: 10.5,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff001350)),
                          )
                        ],
                      ),
                      Spacer(),
                      Text('05/05/2024')
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                      ),
                      SizedBox(width: 4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Software Engineering',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff001350)),
                          ),
                          Text(
                            'The Group “Software Engineering” was created',
                            style: GoogleFonts.poppins(
                                fontSize: 10.5,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff001350)),
                          )
                        ],
                      ),
                      Spacer(),
                      Text('05/05/2024')
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Computer Science 1',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff001350)),
                          ),
                          Text(
                            'The Group “Computer science” was created',
                            style: GoogleFonts.poppins(
                                fontSize: 10.5,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff001350)),
                          )
                        ],
                      ),
                      Spacer(),
                      Text('05/05/2024')
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                      ),
                      SizedBox(width: 4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Software Engineering 1',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff001350)),
                          ),
                          Text(
                            'The Group “Software Engineering” was created',
                            style: GoogleFonts.poppins(
                                fontSize: 10.5,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff001350)),
                          )
                        ],
                      ),
                      Spacer(),
                      Text('05/05/2024')
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(color: Colors.grey),
                  Text(
                    'Groups you can join',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff001350),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('assets/uu.png'),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SP - 21 - ALUMNI',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff001350)),
                          ),
                          Text(
                            'Request to join',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff001350)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('assets/uu.png'),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Web Developers',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff001350)),
                          ),
                          Text(
                            '155 members',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff001350)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('assets/uu.png'),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Flutter Developers',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff001350)),
                          ),
                          Text(
                            '128 members',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff001350)),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff001350),
              ),
              child: Center(
                child: Container(
                  height: 33,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xff001350),
                        ),
                        Text(
                          "Add group",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff001350)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

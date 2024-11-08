
import 'package:crypt2call/screens/chatmodel.dart';
import 'package:crypt2call/screens/customcard.dart';
import 'package:crypt2call/screens/linked_devices.dart';
import 'package:crypt2call/screens/new_chat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chats extends StatefulWidget {
  const chats({super.key});

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  List<chatmodel> chats=[
    chatmodel(
        name: "Jacob",
        isGroup:false,
        currentMessage: "Ok I will update you soon",
        icon: "groups_sharp",
        time: '4:00',
        imageUrl: 'assets/aa.png'

    ),
    chatmodel(
        name: "Allesia",
        isGroup:false,
        currentMessage: "Ok I will update you soon",
        icon: "groups_sharp",
        time: '9:00',
        imageUrl: 'assets/allesia.png'
    ),
    chatmodel(
        name: "Paul Smith",
        isGroup:false,
        currentMessage: "Ok I will update you soon",
        icon: "person.png",
        time: '9:00',
        imageUrl: 'assets/paul.png'

    ),
    chatmodel(
        name: "Kane Williamson",
        isGroup:false,
        currentMessage: "Ok I will update you soon",
        icon: "person.png",
        time: '9:00',
        imageUrl: 'assets/kane.png'

    ),
    chatmodel(
        name: "Sterla Monick",
        isGroup:false,
        currentMessage: "Ok I will update you soon",
        icon: "person.png",
        time: '9:00',
        imageUrl: 'assets/sterla.png'

    ),
    chatmodel(
        name: "Pola Martin",
        isGroup:false,
        currentMessage: "Ok I will update you soon",
        icon: "person.png",
        time: '9:00',
        imageUrl: 'assets/pola.png'

    ),
    chatmodel(
        name: "Gary Anderson",
        isGroup:false,
        currentMessage: "Ok I will update you soon",
        icon: "person.png",
        time: '9:00',
        imageUrl: 'assets/garyyy.png'
    ),
    chatmodel(
        name: "Sherit",
        isGroup:false,
        currentMessage: "Ok I will update you soon",
        icon: "person.png",
        time: '9:00',
        imageUrl: 'assets/pola.png'

    ),
    chatmodel(
        name: "Dev Stack",
        isGroup:true,
        currentMessage: "Ok I will update you soon",
        icon: "person.png",
        time: '9:00',
        imageUrl: 'assets/pola.png'

    ),
  ];
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 130,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: PopupMenuButton(
                          offset: Offset(-5, 25),

                          elevation: 0,
                          shadowColor: Colors.transparent,
                          color: Colors.transparent,
                          onSelected: (value) {
                            setState(() {
                              _selectedOption = value; // Update the selected option
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Selected: $value')),
                            );
                          },
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                height: 10,
                                value: 'Option 1',
                                child: Container(
                                  width: 190, // Set the width of the container
                                  height: 35, // Set the height of the container
                                  decoration: BoxDecoration(
                                    color: Color(0xff001350), // Background color
                                    borderRadius: BorderRadius.circular(8), // Rounded corners
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Selected chats',
                                          style: TextStyle(color: Colors.white), // Text color
                                        ),
                                      ),
                                      SizedBox(width: 50,),
                                      if (_selectedOption == 'Option 1')
                                        Icon(Icons.check_circle, color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),

                              PopupMenuItem(

                                value: 'Option 2',
                                child: GestureDetector(
                                  onTap:(){
                                    Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context)=>linkeddevices()));

                                  },
                                  child: Container(
                                    width: 190, // Set the width of the container
                                    height: 35, // Set the height of the container
                                    decoration: BoxDecoration(
                                      color: Color(0xff001350), // Background color
                                      borderRadius: BorderRadius.circular(8), // Rounded corners
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Linked devices',
                                            style: TextStyle(color: Colors.white), // Text color
                                          ),
                                        ),
                                        if (_selectedOption == 'Option 2')
                                          Icon(Icons.check_circle, color: Colors.white)
                                      ],
                                    ),

                                  ),
                                ),
                              ),
                            ];
                          },
                          child: Container(
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
                        ),
                      ),
                      SizedBox(width: 55,),
                      Image(image: AssetImage('assets/title (1).png')),
                      SizedBox(width: 35,),
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
                          radius: 18,
                          backgroundColor: Color(0xFFF1F1F1),
                          child: Icon(Icons.camera_alt_rounded,size:25,color: Color(0xFF001350),),
                        ),

                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Color(0xFF001350),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context)=>NewChat()));


                          },
                            child: Icon(Icons.add,color: Colors.white,size: 28,)),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 300,top: 10),
                    child: Text('Chats',
                      style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.w700,color:Color(0XFF001350)),),
                  )
                ],
              ),
            ),
          ],
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: chats.length,
          itemBuilder: (context,index)=>customcard(chatmodel: chats[index]),
        ),


      ),
    );
  }
}

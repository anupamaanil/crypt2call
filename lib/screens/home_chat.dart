
import 'package:crypt2call/screens/calls.dart';
import 'package:crypt2call/screens/chats.dart';
import 'package:crypt2call/screens/communities.dart';
import 'package:crypt2call/screens/settings.dart';
import 'package:crypt2call/screens/updates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _MyAppState();
}

class _MyAppState extends State<Homepage> {

  Widget _buildActiveIcon(IconData icon) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(icon, size: 30, color: Colors.white), // Active icon in white
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.red, // Red indicator
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _mycurrentindex = index;
    });
  }

  int _mycurrentindex=0;
  List mypages=[chats(),updates(),communities(),calls(),settings()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,

        body: mypages[_mycurrentindex],

        bottomNavigationBar: Container(
          height: 80,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF001350),
              unselectedItemColor: Colors.white60,
              onTap: (index){
                setState(() {
                  _mycurrentindex=index;

                });
              },
              currentIndex: _mycurrentindex,
              items:[
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble_2_fill,),
                    activeIcon: _buildActiveIcon(CupertinoIcons.chat_bubble_2_fill,
                    ),
                    label: "Chats"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.arrow_2_circlepath_circle),
                    activeIcon: _buildActiveIcon(CupertinoIcons.arrow_2_circlepath_circle,),
                    label: "Updates"),

                BottomNavigationBarItem(
                    icon: Icon(Icons.groups_sharp),
                    activeIcon: _buildActiveIcon(Icons.groups_sharp,),
                    label: "Communities"),

                BottomNavigationBarItem(
                    icon: Icon(Icons.call_sharp),
                    activeIcon: _buildActiveIcon(Icons.call_sharp),
                    label: "Calls"),

                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    activeIcon: _buildActiveIcon(Icons.settings),
                    label: "settings")
              ]),
        ),
      ),
    );
  }
}

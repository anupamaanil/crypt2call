
import 'package:crypt2call/screens/chatmodel.dart';
import 'package:crypt2call/screens/individualpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customcard extends StatelessWidget {
  const customcard({super.key,this.chatmodel});

  final chatmodel ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(
            builder: (context)=>individualpage(chatmodel: chatmodel,)));
      },
      child: Column(
        children: [
          ListTile(
            leading:Image.asset(chatmodel.imageUrl),
            title: Text(chatmodel.name,style: GoogleFonts.poppins(fontSize:18,fontWeight:FontWeight.w600,color:Color(0XFF001350)),),
            trailing: Text("20:40"),
            subtitle: Row(
              children: [
                Icon(Icons.done_all,color: Color(0XFF001350),),
                SizedBox(width: 3,),
                Text(chatmodel.currentMessage,style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w400,color: Color(0xFF001350)),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Divider(
              thickness: 0,
            ),
          ),
        ],
      ),
    );
  }
}

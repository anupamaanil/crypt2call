

import 'package:flutter/material.dart';
import 'package:azlistview/azlistview.dart';


class NameList extends ISuspensionBean{
  final String title;
  final String tag;
  NameList({required this.title,required this.tag});
  @override
  String getSuspensionTag()=>tag;
}

class AlphabetListScrollView extends StatefulWidget {
  final List<String>items;
  const AlphabetListScrollView({super.key,required this.items});

  @override
  State<AlphabetListScrollView> createState() => _AlphabetListScrollViewState();
}

class _AlphabetListScrollViewState extends State<AlphabetListScrollView> {
  List<NameList>items=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initList(widget.items);
  }
  void initList(List<String>items){
    this.items=items.map((item)=>NameList(title: item,tag: item[0])).toList();
  }
  @override
  Widget build(BuildContext context)=>Padding(
    padding: const EdgeInsets.only(bottom: 550),
    child: AzListView(
      data: items,
      indexHintBuilder: (context, tag) => Container(
        width: 50,
        height: 50,
        alignment: Alignment.bottomRight,
        color: Colors.indigo,
        child: Text(
          tag,style: TextStyle(
            color: Colors.white,
            fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
      indexBarOptions: IndexBarOptions(
          needRebuild: true,
          indexHintAlignment: Alignment.centerRight,
          selectTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
          selectItemDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue
          )
      ),
      itemCount: items.length,
      itemBuilder: (context,index){
        final item=items[index];
        return _buildListItem(item);
      },
    ),
  );
  Widget _buildListItem(NameList item)=>ListTile(
    title: Text(item.title),
  );

}

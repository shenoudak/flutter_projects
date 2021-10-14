import 'package:flutter/material.dart';
import 'package:fluttertest/modules/screens_layout/archived_screen.dart';
import 'package:fluttertest/modules/screens_layout/done_screen.dart';
import 'package:fluttertest/modules/screens_layout/task_screen.dart';

class HomeLayoutBottomNav extends StatefulWidget {
  const HomeLayoutBottomNav({Key? key}) : super(key: key);

  @override
  State<HomeLayoutBottomNav> createState() => _HomeLayoutBottomNavState();
}

class _HomeLayoutBottomNavState extends State<HomeLayoutBottomNav> {
  int curindex=0;
  List scrrens_list=[
    TaskScreen(),
    DoneScreen(),
    ArchivedScreen(),
  ];
  List title_list=[
    'TaskScreen',
    'DoneScreen',
    'ArchivedScreen',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('${title_list[curindex]}'),
        centerTitle: true,
        elevation: 0.0,
      ),
      bottomNavigationBar:BottomNavigationBar(
        //currentIndex: 1,
        onTap: (index){
          setState(() {
            curindex=index;
          });
        },
        currentIndex: curindex,
        items:const [
          BottomNavigationBarItem(
              icon:Icon(Icons.task_alt_outlined),
            label:'Tasks',

          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.done_all_outlined),
            label:'Done',
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.archive_outlined),
            label:'Archived',
          ),
        ],
      ) ,
      body: scrrens_list[curindex],

    );
  }
}

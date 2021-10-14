import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:fluttertest/modules/done_tasks/done_tasks_screen.dart';
import 'package:fluttertest/modules/new_tasks/new_tasks_screen.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget {

  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex =0;
  List<Widget>screen=
  [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<Widget>title=
  [
    Text('new task'),
    Text('done task'),
    Text('archived task'),
  ];
  var database;
@override
  void initState() {
    super.initState();
    createDatabase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: title[currentIndex],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: () {
          insertToDatabase();
        },
      ),



      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
            currentIndex=index;

          });
        },

        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.task_alt_outlined),
            label:  'New Task',


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
              label:  ' Done'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
              label:  'Archived'
          ),
        ],
      ) ,
      body: screen[currentIndex],
    );
  }
  void createDatabase()async
  {
     database=await openDatabase(
        'todo.db',
        version: 1,
        onCreate: (database,version)async{
          print('database created');
          await database.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY,title TEXT,date TEXT,time TEXT,status TEXT)');
          print('Table Created');
        },
        onOpen: (database)
        {
          print('database opened');
        }
    );
  }
  void insertToDatabase()
  {
    database.transaction((txn)async
    {
      await txn.rawInsert('INSERT INTO tasks(title,date,time,status)Values("","","","")')
        .then((value) {
          print('${value} insert success');
        }
        ).catchError((error){
          print('error found ${error.toString()}');
        }
        );
    return null;
    } );
  }

}


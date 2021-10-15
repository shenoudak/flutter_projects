import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:fluttertest/modules/done_tasks/done_tasks_screen.dart';
import 'package:fluttertest/modules/new_tasks/new_tasks_screen.dart';
import 'package:fluttertest/shared/components/compo.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool showButtomSheet = false;
  int currentIndex = 0;
  IconData fabIcon = Icons.edit;
  var taskTitle = TextEditingController();
  var taskTime = TextEditingController();
  var taskDate = TextEditingController();
  List<Widget> screen = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<Widget> title = [
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
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        title: title[currentIndex],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(fabIcon),
          onPressed: () {
            if (showButtomSheet) {
                setState(() {
                fabIcon = Icons.edit;
                });
                Navigator.pop(context);
                showButtomSheet = false;
              }
               else {
              setState(() {
                fabIcon = Icons.add;
              });
              scaffoldKey.currentState!.showBottomSheet(
                (context) => Container(
                  color: Colors.teal[50],
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defTextFormFaild(
                              controller: taskTitle,
                              label: ' Task Title',
                              perfixIcon: Icons.title,
                              TextValidateReturn: 'Task Title Must Be Filled'),
                          SizedBox(
                            height: 15.0,
                          ),
                          defTextFormFaild(
                              isTap: () {
                                //taskTime=TimeOfDay.now();
                                showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now())
                                    .then((value) => taskTime.text =
                                        value!.format(context).toString());
                              },
                              controller: taskTime,
                              keyboardType: TextInputType.phone,
                              label: ' Task Time',
                              perfixIcon: Icons.watch,
                              TextValidateReturn: 'Task Time Must Be Filled'),
                          SizedBox(
                            height: 15.0,
                          ),
                          defTextFormFaild(
                              keyboardType: TextInputType.phone,
                              isTap: (){
                                showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2021),
                                    lastDate: DateTime(2025)).then((value) => taskDate.text=DateFormat.yMMMd().format(value!));

                              },
                              controller: taskDate,
                              label: ' Task Date',
                              perfixIcon: Icons.date_range_rounded,
                              TextValidateReturn: 'Task Date Must Be Filled'),
                        ],
                      ),
                    ),
                  ),
                ),
              );
              showButtomSheet = true;
            }
          }),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.task_alt_outlined),
            label: 'New Task',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: ' Done'),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined), label: 'Archived'),
        ],
      ),
      body: screen[currentIndex],
    );
  }

  void createDatabase() async {
    database = await openDatabase('todo.db', version: 1,
        onCreate: (database, version) async {
      print('database created');
      await database
          .execute(
              'CREATE TABLE tasks(id INTEGER PRIMARY KEY,title TEXT,date TEXT,time TEXT,status TEXT)')
          .then((value) {
        print('Table Created Successfuly');
      }).catchError((error) {
        print('Error ${error.toString()}');
      });
      print('Table Created');
    }, onOpen: (database) {
      print('database opened');
    });

    ///login
  }

  void insertToDatabase() {
    database.transaction((txn) async {
      await txn
          .rawInsert(
              'INSERT INTO tasks(title,date,time,status)Values("","","","")')
          .then((value) {
        print('${value} insert success');
      }).catchError((error) {
        print('error found ${error.toString()}');
      });
      return null;
    });
  }
}

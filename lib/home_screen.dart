import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text('Drop of Blood'),
        centerTitle: true,
        backgroundColor: Colors.red.withOpacity(0.9),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {

            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body:Column(
        children: [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.withOpacity(0.5),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[700],
                        radius: 60.0,
                        child: Text(
                          'A+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.withOpacity(0.5),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[700],
                        radius: 60.0,
                        child: Text(
                          'B+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.withOpacity(0.5),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[700],
                        radius: 60.0,
                        child: Text(
                          'A-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.withOpacity(0.5),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[700],
                        radius: 60.0,
                        child: Text(
                          'B-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.withOpacity(0.5),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[700],
                        radius: 60.0,
                        child: Text(
                          'AB+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.withOpacity(0.5),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[700],
                        radius: 60.0,
                        child: Text(
                          'AB-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.withOpacity(0.5),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[700],
                        radius: 60.0,
                        child: Text(
                          'O+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.withOpacity(0.5),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[700],
                        radius: 60.0,
                        child: Text(
                          'O-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}

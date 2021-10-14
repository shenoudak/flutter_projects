import 'package:flutter/material.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center
      (
        child:
        Text(
          'Done Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,)
          ,
        )
    );
  }
}

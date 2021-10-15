import 'package:flutter/material.dart';
import 'package:fluttertest/messenger_design.dart';

import 'home_screen.dart';
import 'layout/home_layout.dart';
import 'layout/layout_bottom_nav.dart';
import 'modules/login/login_screen.dart';
import 'modules/login/loscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp
      (
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}

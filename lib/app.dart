import 'package:flutter/material.dart';
import 'package:flutter_learing_practice/class_7/class_3_button.dart';

import 'class_8/class_8_input.dart';
import 'class_8/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learn with Flutter",
      // theme: ThemeData(
      //   brightness: Brightness.dark
      // ),

      home: Login(),

    );
  }
}
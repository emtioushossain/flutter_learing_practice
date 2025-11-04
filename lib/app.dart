import 'package:flutter/material.dart';
import 'package:flutter_learing_practice/class_7/class_3_button.dart';
import 'package:flutter_learing_practice/home.dart';

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
      home: ButtonGroup(),

    );
  }
}
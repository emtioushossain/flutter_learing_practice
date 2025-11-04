import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App with Flutter"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "This is body",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              wordSpacing: 10,
              letterSpacing: 10,
            ),
          ),
          Text(
            "This is body",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              wordSpacing: 10,
              letterSpacing: 10,
            ),
          ),
          Text(
            "This is body",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              wordSpacing: 10,
              letterSpacing: 10,
            ),
          ),
          Text(
            "This is body",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              wordSpacing: 10,
              letterSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}

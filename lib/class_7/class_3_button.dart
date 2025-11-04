import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Group"), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Submit Button")),
            ElevatedButton(onPressed: () {}, child: Text("Save Button")),
            ElevatedButton(onPressed: () {}, child: Text("Add Button")),
          ],
        ),
      ),
    );
  }
}

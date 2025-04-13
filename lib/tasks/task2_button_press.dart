import 'package:flutter/material.dart';

class Task2ButtonPress extends StatefulWidget {
  const Task2ButtonPress({super.key});

  @override
  _Task2ButtonPressState createState() => _Task2ButtonPressState();
}

class _Task2ButtonPressState extends State<Task2ButtonPress> {
  String displayText = "Press the button";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 2: Button Press'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  displayText = "Button Pressed!";
                });
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
} 
import 'package:flutter/material.dart';
import 'tasks/task1_hello_world.dart';
import 'tasks/task2_button_press.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tasks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskSelectionScreen(),
    );
  }
}

class TaskSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tasks'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Task 1: Hello World'),
            subtitle: Text('Display Hello World with custom styling'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task1HelloWorld()),
              );
            },
          ),
          ListTile(
            title: Text('Task 2: Button Press'),
            subtitle: Text('Change text on button press'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task2ButtonPress()),
              );
            },
          ),
        ],
      ),
    );
  }
}
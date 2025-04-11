import 'package:flutter/material.dart';
import 'tasks/task1_hello_world.dart';
import 'tasks/task2_button_press.dart';
import 'tasks/task3_listview.dart';
import 'tasks/task4_text_styles.dart';
import 'tasks/task5_navigation.dart';

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
          ListTile(
            title: Text('Task 3: ListView'),
            subtitle: Text('Display list of numbered items'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task3ListView()),
              );
            },
          ),
          ListTile(
            title: Text('Task 4: Text Styles'),
            subtitle: Text('Show different text styles'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task4TextStyles()),
              );
            },
          ),
          ListTile(
            title: Text('Task 5: Navigation'),
            subtitle: Text('Navigate between two screens'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task5FirstScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'tasks/task1_hello_world.dart';
import 'tasks/task2_button_press.dart';
import 'tasks/task3_listview.dart';
import 'tasks/task4_text_styles.dart';
import 'tasks/task5_navigation.dart';
import 'tasks/task6_login_screen.dart';
import 'tasks/task7_image_grid.dart';
import 'tasks/task8_navigation_drawer.dart';
import 'tasks/task9_custom_card.dart';
import 'tasks/task10_bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const TaskSelectionScreen({super.key});

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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task1HelloWorld()),
              );
            },
          ),
          ListTile(
            title: Text('Task 2: Button Press'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task2ButtonPress()),
              );
            },
          ),
          ListTile(
            title: Text('Task 3: ListView'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task3ListView()),
              );
            },
          ),
          ListTile(
            title: Text('Task 4: Text Styles'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task4TextStyles()),
              );
            },
          ),
          ListTile(
            title: Text('Task 5: Navigation'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task5FirstScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Task 6: Login Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task6LoginScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Task 7: Image Grid'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task7ImageGrid()),
              );
            },
          ),
          ListTile(
            title: Text('Task 8: Navigation Drawer'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task8NavigationDrawer()),
              );
            },
          ),
          ListTile(
            title: Text('Task 9: Custom Card'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task9CustomCard()),
              );
            },
          ),
          ListTile(
            title: Text('Task 10: Bottom Navigation'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task10BottomNav()),
              );
            },
          ),
        ],
      ),
    );
  }
}
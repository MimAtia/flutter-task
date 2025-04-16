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
import 'tasks/task11_asset_image.dart';
import 'tasks/task12_styled_container.dart';
import 'tasks/task13_custom_appbar.dart';
import 'tasks/task14_swipeable_list.dart';
import 'tasks/task15_date_time_picker.dart';
import 'tasks/task16_animated_container.dart';
import 'tasks/task17_settings_screen.dart';
import 'tasks/task18_profile_image_picker.dart';
import 'tasks/task19_animated_drawer.dart';

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
          ListTile(
            title: Text('Task 11: Asset Image'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task11AssetImage()),
              );
            },
          ),
          ListTile(
            title: Text('Task 12: Styled Container'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task12StyledContainer()),
              );
            },
          ),
          ListTile(
            title: Text('Task 13: Custom AppBar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task13CustomAppbar()),
              );
            },
          ),
          ListTile(
            title: Text('Task 14: Swipeable List'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task14SwipeableList()),
              );
            },
          ),
          ListTile(
            title: Text('Task 15: Date Time Picker'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task15DateTimePicker()),
              );
            },
          ),
          ListTile(
            title: Text('Task 16: Animated Container'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task16AnimatedContainer()),
              );
            },
          ),
          ListTile(
            title: Text('Task 17: Settings Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task17SettingsScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Task 18: Profile Image Picker'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task18ProfileImagePicker()),
              );
            },
          ),
          ListTile(
            title: Text('Task 19: Animated Drawer'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task19AnimatedDrawer()),
              );
            },
          ),
        ],
      ),
    );
  }
}
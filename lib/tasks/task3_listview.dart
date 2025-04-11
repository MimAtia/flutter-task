import 'package:flutter/material.dart';

class Task3ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 3: ListView'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text('Item ${index + 1}'),
            subtitle: Text('This is item number ${index + 1}'),
          );
        },
      ),
    );
  }
} 
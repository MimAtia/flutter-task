import 'package:flutter/material.dart';

class Task7ImageGrid extends StatelessWidget {
  const Task7ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Grid'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Image ${index + 1}',
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
} 
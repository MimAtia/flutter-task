import 'package:flutter/material.dart';

class Task4TextStyles extends StatelessWidget {
  const Task4TextStyles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 4: Text Styles'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bold Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Red Text',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Large Italic Text',
              style: TextStyle(
                fontSize: 28,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Underlined Text',
              style: TextStyle(
                fontSize: 22,
                decoration: TextDecoration.underline,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Custom Font Weight',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Text with Shadow',
              style: TextStyle(
                fontSize: 26,
                color: Colors.orange,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 
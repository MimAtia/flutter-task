import 'package:flutter/material.dart';

class Task16AnimatedContainer extends StatefulWidget {
  const Task16AnimatedContainer({super.key});

  @override
  State<Task16AnimatedContainer> createState() => _Task16AnimatedContainerState();
}

class _Task16AnimatedContainerState extends State<Task16AnimatedContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: _isExpanded ? 300 : 150,
              height: _isExpanded ? 300 : 150,
              decoration: BoxDecoration(
                color: _isExpanded ? Colors.blue : Colors.red,
                borderRadius: BorderRadius.circular(_isExpanded ? 50 : 20),
              ),
              child: const Center(
                child: Text(
                  'Tap the button!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Text(_isExpanded ? 'Shrink' : 'Expand'),
            ),
          ],
        ),
      ),
    );
  }
} 
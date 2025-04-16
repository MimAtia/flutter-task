import 'package:flutter/material.dart';

class Task13CustomAppbar extends StatelessWidget {
  const Task13CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/flutter_logo.png',
            fit: BoxFit.contain,
          ),
        ),
        title: const Text('My Custom App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Menu functionality
            },
          ),
        ],
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: const Center(
        child: Text(
          'Welcome to My App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
} 
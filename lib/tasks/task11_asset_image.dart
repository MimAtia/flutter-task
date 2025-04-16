import 'package:flutter/material.dart';

class Task11AssetImage extends StatelessWidget {
  const Task11AssetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asset Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/flutter_logo.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Flutter Logo from Assets',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
} 
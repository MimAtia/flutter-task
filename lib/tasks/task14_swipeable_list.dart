import 'package:flutter/material.dart';

class Task14SwipeableList extends StatelessWidget {
  const Task14SwipeableList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipeable List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            secondaryBackground: Container(
              color: Colors.blue,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                // Delete action
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${items[index]} deleted')),
                );
              } else {
                // Edit action
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${items[index]} edited')),
                );
              }
            },
            child: ListTile(
              title: Text(items[index]),
              leading: const Icon(Icons.list),
            ),
          );
        },
      ),
    );
  }
} 
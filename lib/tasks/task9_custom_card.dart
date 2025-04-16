import 'package:flutter/material.dart';

class Task9CustomCard extends StatelessWidget {
  const Task9CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'title': 'Beautiful Sunset',
        'subtitle': 'Nature Photography',
        'description': 'A stunning view of the sunset over the mountains',
        'image': 'https://picsum.photos/200/300?random=1',
      },
      {
        'title': 'City Life',
        'subtitle': 'Urban Photography',
        'description': 'The vibrant energy of city streets at night',
        'image': 'https://picsum.photos/200/300?random=2',
      },
      {
        'title': 'Ocean Waves',
        'subtitle': 'Seascape',
        'description': 'The powerful waves crashing against the shore',
        'image': 'https://picsum.photos/200/300?random=3',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Custom Cards')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomCard(
            title: items[index]['title']!,
            subtitle: items[index]['subtitle']!,
            description: items[index]['description']!,
            imageUrl: items[index]['image']!,
          );
        },
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String description;
  final String imageUrl;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imageUrl,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isHovered = true),
      onTapUp: (_) => setState(() => _isHovered = false),
      onTapCancel: () => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(_isHovered ? 0.3 : 0.1),
              blurRadius: _isHovered ? 10 : 5,
              offset: Offset(0, _isHovered ? 5 : 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                widget.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.description,
                    style: const TextStyle(fontSize: 14),
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
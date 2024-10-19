// lib/widgets/activity_card.dart
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String image;
  final String title;

  const ActivityCard({super.key, required this.image, required this.title, required MaterialColor color, required String imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(image, height: 80),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Handle navigation or actions here
            },
            child: const Text('Start Now'),
          ),
        ],
      ),
    );
  }
}

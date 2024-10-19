// lib/widgets/progress_circle.dart
import 'package:flutter/material.dart';

class ProgressCircle extends StatelessWidget {
  final double percentage;

const ProgressCircle({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                strokeWidth: 5,
                value: percentage / 100,
                color: Colors.orange,
                backgroundColor: Colors.grey[300],
              ),
            ),
            Text("${percentage.toInt()}%"),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

// TODO Implement this library.
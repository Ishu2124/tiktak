// lib/screens/reminder_page.dart
import 'package:flutter/material.dart';
import '../widgets/progress_circle.dart'; // Custom progress circle widget

class ReminderPage extends StatelessWidget {
  const ReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reminder Habits"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, John",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SwitchListTile(
              title: const Text("Cycling"),
              value: true, // You can manage state with a stateful widget
              onChanged: (value) {},
            ),
            SwitchListTile(
              title: const Text("Study"),
              value: false,
              onChanged: (value) {},
            ),
            SwitchListTile(
              title: const Text("Work"),
              value: true,
              onChanged: (value) {},
            ),
            SwitchListTile(
              title: const Text("Running"),
              value: false,
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProgressCircle(percentage: 13),
                ProgressCircle(percentage: 40),
                ProgressCircle(percentage: 45),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO Implement this library.
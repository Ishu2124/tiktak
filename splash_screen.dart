// lib/screens/splash_screen.dart
import 'package:flutter/material.dart';
import 'activities_page.dart';// Navigate to the activities page after splash screen

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/habit_illustration.png', height: 200),
            const SizedBox(height: 20),
            const Text(
              "Let's Start Your Habits",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the activities page
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ActivitiesPage()));
              },
              child: const Text("Start Now"),
            ),
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.
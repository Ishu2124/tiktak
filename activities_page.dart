import 'package:flutter/material.dart';
import '../widgets/activity_card.dart';

class ActivitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildDayCard("Mon", "5", true),
                  buildDayCard("Tue", "6", false),
                  buildDayCard("Wed", "7", false),
                  buildDayCard("Thu", "8", false),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Outdoor", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 40),
                Text("Indoor"),
              ],
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView(
                children: const [
                  ActivityCard(title: "Yoga", imagePath: 'assets/yoga.png', color: Colors.blue, image: '',),
                  ActivityCard(title: "Cycling", imagePath: 'assets/cycling.png', color: Colors.cyan, image: '',),
                  ActivityCard(title: "Running", imagePath: 'assets/running.png', color: Colors.pink, image: '',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDayCard(String day, String date, bool selected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: selected ? Colors.orange : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day, style: TextStyle(color: selected ? Colors.white : Colors.black)),
          Text(date, style: TextStyle(color: selected ? Colors.white : Colors.black)),
        ],
      ),
    );
  }
}

// TODO Implement this library.// TODO Implement this library.
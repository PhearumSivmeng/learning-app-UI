import 'package:flutter/material.dart';

class LearnCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding inside the Card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/e-learning.png'),
                  radius: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Princeton University',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Computer Science: Programming with a Purpose',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: 0.01,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
            ),
            SizedBox(height: 16),
            Text(
              'Supplements for Lecture 1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle reading button press
                  },
                  icon: Icon(Icons.article),
                  label: Text('Reading'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Handle 10 min button press
                  },
                  child: Text('10 min'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Handle up next button press
                  },
                  child: Text('Up Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

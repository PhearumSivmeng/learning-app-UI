import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Custom AppBar Title
        title: Text(
          'Course Detail',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade500,
        // Custom leading icon for the back button
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back, // Back arrow icon
            color: Colors.white, // Set the icon color to white
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Learn to Program: The Fundamentals',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text('4.7 (6.4k)', style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 5),
                  Text('Taught in English'),
                  Spacer(),
                  Text('21 languages available',
                      style: TextStyle(decoration: TextDecoration.underline)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Offered By',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Image.network(
                    '',
                    width: 10,
                  ),
                  SizedBox(width: 5),
                  Text('University of Toronto',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'About this Course',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Behind every mouse click and touch-screen tap, there is a computer program that makes things happen. This course introduces the fundamental building blocks of programming and teaches you how to write fun and useful programs...',
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.online_prediction),
                  SizedBox(width: 5),
                  Text('100% online'),
                  Spacer(),
                  Text('Start instantly and learn at your own schedule'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.schedule),
                  SizedBox(width: 5),
                  Text('Flexible deadlines'),
                  Spacer(),
                  Text('Reset deadline in accordance to your schedule'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.bar_chart),
                  SizedBox(width: 5),
                  Text('Beginner Level'),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade500, // Background color
                  ),
                  child: Text(
                    'See enrollment options',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text('Starts Aug 6'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

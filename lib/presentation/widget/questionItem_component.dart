import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_upward, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text("0 votes"),
                    SizedBox(width: 16),
                    Icon(Icons.chat_bubble_outline,
                        size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text("0 answers"),
                    SizedBox(width: 16),
                    Icon(Icons.visibility, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text("4 views"),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Mobile Application Permissions in Webview',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'I am building an expo react native mobile application for my already existing website...',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: [
                Chip(label: Text('android')),
                Chip(label: Text('react-native')),
                Chip(label: Text('webview')),
                Chip(label: Text('expo')),
                Chip(label: Text('android-permissions')),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.blue,
                  child: Text('A',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                ),
                SizedBox(width: 8),
                Text('Aashish Singh Bisht 1', style: TextStyle(fontSize: 12)),
                Spacer(),
                Text('asked 1 min ago',
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

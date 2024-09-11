import 'package:flutter/material.dart';

class CertificateCard extends StatelessWidget {
  final String title;
  final String detail;
  final String rating;
  final String reviews;
  final String imageUrl;

  CertificateCard({
    required this.title,
    required this.detail,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 200,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  detail,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    SizedBox(width: 4),
                    Text('$rating ($reviews)'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

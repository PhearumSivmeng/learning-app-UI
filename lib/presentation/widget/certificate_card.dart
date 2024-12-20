import 'package:flutter/material.dart';

class CertificateCard extends StatelessWidget {
  final String title;
  final String detail;
  final String imageUrl;

  CertificateCard({
    required this.title,
    required this.detail,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250, // Fixed width
      height: 300, // Fixed height
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Set the desired radius
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: 250, // Match the card width
              height: 175,
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
                    softWrap: true,
                    overflow: TextOverflow.ellipsis, // Truncate if needed
                    maxLines: 1,
                  ),
                  SizedBox(height: 8),
                  Text(
                    detail,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis, // Truncate if needed
                    maxLines: 2, // Limit detail to 3 lines
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

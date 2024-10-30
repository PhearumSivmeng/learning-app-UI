import 'package:flutter/material.dart';
import 'package:learning_app/presentation/widget/category_component.dart';
import 'package:learning_app/presentation/widget/certificate_card.dart';
import 'package:learning_app/presentation/widget/slide_component.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Custom AppBar Title
        title: Text(
          'Explore',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade300,
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselExample(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Technologies',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 5),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildTechnologyButton(
                      context, 'Flutter', Colors.blue.shade500),
                  _buildTechnologyButton(
                      context, 'Laravel', Colors.red.shade700),
                  _buildTechnologyButton(
                      context, 'React-Js', Colors.orange.shade700),
                  _buildTechnologyButton(
                      context, 'Vue-js', Colors.green.shade500),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Most Popular Courses',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CertificateCard(
                    title: 'Certificate 1',
                    detail: 'Certificate 2',
                    rating: '4.5',
                    reviews: '192k',
                    imageUrl:
                        'assets/images/e-learning.png', // Ensure this is correct
                  ),
                  SizedBox(width: 5),
                  CertificateCard(
                    title: 'Certificate 2',
                    detail: 'Certificate 2',
                    rating: '4.7',
                    reviews: '220k',
                    imageUrl:
                        'assets/images/e-learning.png', // Ensure this is correct
                  ),
                  SizedBox(width: 5),
                  CertificateCard(
                    title: 'Certificate 2',
                    detail: 'Certificate 2',
                    rating: '4.7',
                    reviews: '220k',
                    imageUrl:
                        'assets/images/e-learning.png', // Ensure this is correct
                  ),
                  SizedBox(width: 5),
                  CertificateCard(
                    title: 'Certificate 2',
                    detail: 'Certificate 2',
                    rating: '4.7',
                    reviews: '220k',
                    imageUrl:
                        'assets/images/e-learning.png', // Ensure this is correct
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'New Release',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
                child: Column(
              children: [
                CategoryCard(
                  title: 'C++',
                  description:
                      'C++ is a low-level language for basic learning.',
                  imageUrl: 'assets/images/e-learning.png',
                ),
                CategoryCard(
                  title: 'C++',
                  description:
                      'C++ is a low-level language for basic learning.',
                  imageUrl: 'assets/images/e-learning.png',
                ),
                CategoryCard(
                  title: 'C++',
                  description:
                      'C++ is a low-level language for basic learning.',
                  imageUrl: 'assets/images/e-learning.png',
                ),
                CategoryCard(
                  title: 'C++',
                  description:
                      'C++ is a low-level language for basic learning.',
                  imageUrl: 'assets/images/e-learning.png',
                )
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Set the background color of the BottomNavigationBar
        backgroundColor: Colors.blue.shade300,
        // Define the items in the BottomNavigationBar
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Learn'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0, // Set the initial selected item
        selectedItemColor: Colors.black, // Set the color for the selected item
        unselectedItemColor: Colors.white,
        onTap: (index) {
          // Handle item tap here
          print("Tapped on index: $index");
        },
        type: BottomNavigationBarType
            .fixed, // Ensure the items stay fixed and don't move
      ),
    );
  }
}

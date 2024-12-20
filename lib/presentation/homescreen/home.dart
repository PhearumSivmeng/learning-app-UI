import 'package:flutter/material.dart';
import 'package:learning_app/core/util/my_theme.dart';
import 'package:learning_app/presentation/widget/category_card.dart';
import 'package:learning_app/presentation/widget/certificate_card.dart';
import 'package:learning_app/presentation/widget/course_card.dart';
import 'package:learning_app/presentation/widget/slide_component.dart';
import 'package:learning_app/routes/route.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.background,
      appBar: AppBar(
        shadowColor: Colors.black,
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          AssetImage('assets/images/e-learning.png'),
                    ),
                  ),
                  Row(
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            Get.toNamed(AppRoutes.search);
                          },
                        ),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.notifications,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              // Handle notification icon press
                            },
                          ),
                          // Badge
                          Positioned(
                            right: 6, // Position the badge
                            top: 6,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 18,
                                minHeight: 18,
                              ),
                              child: Text(
                                '0',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            CarouselExample(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 20, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      // Implement the functionality here
                      print('See More Pressed');
                    },
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
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
                const SizedBox(height: 16), // Spacing before the button
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Recommendation',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CertificateCard(
                    title: 'Certificate 1',
                    detail:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,',
                    imageUrl:
                        'assets/images/e-learning.png', // Ensure this is correct
                  ),
                  SizedBox(width: 5),
                  CertificateCard(
                    title: 'Certificate 2',
                    detail:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,',
                    imageUrl:
                        'assets/images/e-learning.png', // Ensure this is correct
                  ),
                  SizedBox(width: 5),
                  CertificateCard(
                    title: 'Certificate 2',
                    detail:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,',
                    imageUrl:
                        'assets/images/e-learning.png', // Ensure this is correct
                  ),
                  SizedBox(width: 5),
                  CertificateCard(
                    title: 'Certificate 2',
                    detail:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,',
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
                  CourseCard(),
                  CourseCard(),
                  CourseCard(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Set the background color of the BottomNavigationBar
        backgroundColor: Colors.white,
        // Define the items in the BottomNavigationBar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_open),
            label: 'Menu',
          ),
        ],
        currentIndex: 0, // Set the initial selected item
        selectedItemColor: Colors.black, // Set the color for the selected item
        unselectedItemColor: Colors
            .grey, // Set color for unselected items with some transparency for visual effect
        onTap: (index) {
          // Handle item tap here
          switch (index) {
            case 0:
              {
                Get.offNamed(AppRoutes.home);
                break;
              }
            case 1:
              {
                Get.offNamed(AppRoutes.chat);
                break;
              }
            case 2:
              {
                Get.offNamed(AppRoutes.community);
                break;
              }
            case 3:
              {
                Get.offNamed(AppRoutes.course);
                break;
              }
            case 4:
              {
                Get.offNamed(AppRoutes.menu);
                break;
              }
          }
        },
        type: BottomNavigationBarType
            .fixed, // Ensure the items stay fixed and don't move
      ),
    );
  }
}

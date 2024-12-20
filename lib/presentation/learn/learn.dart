import 'package:flutter/material.dart';
import 'package:learning_app/core/util/my_theme.dart';
import 'package:learning_app/presentation/widget/learnItem_component.dart';
import 'package:get/get.dart';
import 'package:learning_app/routes/route.dart';

class LearnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Custom AppBar Title
        title: Text(
          'Learn',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            LearnCard(),
            LearnCard(),
          ],
        ),
      ),
      backgroundColor: MyTheme.background,
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
        currentIndex: 3, // Set the initial selected item
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

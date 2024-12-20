import 'package:flutter/material.dart';
import 'package:learning_app/core/util/my_theme.dart';
import 'package:learning_app/presentation/widget/chatItem_component.dart';
import 'package:get/get.dart';
import 'package:learning_app/routes/route.dart';

class CommunityPage extends StatelessWidget {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Custom AppBar Title
        title: Text(
          'Community',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        // Custom leading icon for the back button
      ),
      backgroundColor: MyTheme.background,
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Tabs (Home, Channels)
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Number of chats
              itemBuilder: (context, index) {
                return ChatListItem(
                  name: 'Chat $index',
                  lastMessage: 'Last message from user $index',
                  time: '${index + 1}:00 PM',
                  imageUrl: 'assets/images/e-learning.png', // Placeholder image
                  unreadCount:
                      index == 0 ? 14 : 0, // Show badge for the first chat
                );
              },
            ),
          ),
        ],
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
        currentIndex: 1, // Set the initial selected item
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

class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const TabButton({Key? key, required this.text, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tab click
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

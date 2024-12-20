import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/core/util/my_theme.dart';
import 'package:learning_app/routes/route.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Custom AppBar Title
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: MyTheme.background,
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text(
              "Long Thyda",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            accountEmail: Text('Longthyda@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/e-learning.png'), // replace with your image
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.brightness_2,
              color: Colors.black,
            ),
            title: Text(
              'Dark mode',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            title: Text(
              'Favorite',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.swap_horiz,
              color: Colors.black,
            ),
            title: Text(
              'Change role',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.feedback,
              color: Colors.black,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_mail,
              color: Colors.black,
            ),
            title: Text(
              'Contact us',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Colors.black,
            ),
            title: Text(
              'Help and support',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.delete,
              color: Colors.black,
            ),
            title: Text(
              'Delete Account',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.black,
            ),
            title: Text(
              'Info',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle tap
            },
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
        currentIndex: 4, // Set the initial selected item
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

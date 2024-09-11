import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Custom AppBar Title
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade500,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue.shade500),
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
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Dark mode',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Favorite',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.swap_horiz,
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Change role',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.feedback,
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Contact us',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Help and support',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.delete,
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Delete Account',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Info',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.blue.shade500,
            ),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.blue.shade500),
            ),
            onTap: () {
              // Handle tap
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Set the background color of the BottomNavigationBar
        backgroundColor: Colors.blue.shade500,
        // Define the items in the BottomNavigationBar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 4, // Set the initial selected item
        selectedItemColor: Colors.white, // Set the color for the selected item
        unselectedItemColor: Colors.white.withOpacity(
            0.7), // Set color for unselected items with some transparency for visual effect
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/Mobile/MobileHome.dart';
import 'package:get/get.dart';

class customDrawerMobile extends StatelessWidget {
  const customDrawerMobile({super.key});


  @override
  Widget build(BuildContext context) {
    double drawerHeight=MediaQuery.of(context).size.height*0.15;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
        // Reduced DrawerHeader height
          Container(
            color: Colors.grey, // Set background color to grey
            height: drawerHeight,
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
            child: Row(
              children: [
                Icon(CupertinoIcons.profile_circled, color: Colors.white), // Profile icon
                SizedBox(width: 16), // Add spacing between icon and text
                Text(
                  'Ali1234@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          "Home",
          style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121

        ),
        onTap: () {
          Get.offAll(Mobilehome()); // Navigate to the Home screen
        },),
        ListTile(
          leading: Icon(Icons.link),
          title: Text(
            'Link Converter',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Link Converter
            print("Link Converter tapped");
          },
        ),
        ListTile(
          leading: Icon(CupertinoIcons.light_max),
          title: Text(
            'Converter Bots',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Converter Bots
            print("Converter Bots tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text(
            'Social',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Social
            print("Social tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text),
          title: Text(
            'Shortner',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Shortner
            print("Shortner tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.text_fields),
          title: Text(
            'Text Replacer',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Text Replacer
            print("Text Replacer tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.check_circle),
          title: Text(
            'Link Checker',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Link Checker
            print("Link Checker tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'Settings',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Settings
            print("Settings tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            'Profile',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Profile
            print("Profile tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.contact_mail),
          title: Text(
            'Contact Us',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Contact Us
            print("Contact Us tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text(
            'Help',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Help
            print("Help tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'Logout',
            style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
          ),
          onTap: () {
            // Handle Logout
            print("Logout tapped");
          },
        ),
        ],
      ),
    );
  }
}
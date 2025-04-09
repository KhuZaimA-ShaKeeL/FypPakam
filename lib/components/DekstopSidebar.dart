import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/Desktop/DesktopContactUs.dart';
import 'package:fyppakam/Pages/Desktop/DesktopHelp.dart';
import 'package:fyppakam/Pages/Desktop/DesktopHome.dart';
import 'package:fyppakam/Pages/Desktop/DesktopLinkChecker.dart';
import 'package:fyppakam/Pages/Desktop/DesktopLinkConvert.dart';
import 'package:fyppakam/Pages/Desktop/DesktopProfile.dart';
import 'package:fyppakam/Pages/Desktop/DesktopSetting.dart';
import 'package:fyppakam/Pages/Desktop/DesktopShortner.dart';
import 'package:fyppakam/Pages/Desktop/DesktopSocialPage.dart';
import 'package:fyppakam/Pages/Desktop/DesktopTextReplacer.dart';
import 'package:get/get.dart';
import '../Layouts/desktopLayout.dart';
import '../Pages/Desktop/DesktopConvertBots.dart';
class Desktopsidebar extends StatelessWidget {
  const Desktopsidebar({super.key});

  @override
  Widget build(BuildContext context) {
    double drawerHeight=MediaQuery.of(context).size.height*0.08;
    return  Container(
      //     height: MediaQuery.of(context).size.height*0.9,

      //  color: Colors.black,
      child:  Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(10),
              color: Colors.grey,
            ),
            // Set background color to grey
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
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            //  padding: EdgeInsets.zero,
            children: <Widget>[
              // Reduced DrawerHeader height
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121

                ),
                onTap: () {
                  Get.offAll(Desktophome()); // Navigate to the Home screen
                },),
              ListTile(
                leading: Icon(Icons.link),
                title: Text(
                  'Link Converter',
                  style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
                ),
                onTap: () {
                  // Handle Link Converter
                  Get.to(Desktoplinkconvert());
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
                  Get.to(Desktopconvertbots());
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
                  Get.to(Desktopsocialpage());
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

                  Get.to(Desktopshortner());
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

                  Get.to(Desktoptextreplacer());
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
                  Get.to(Desktoplinkchecker());
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
                  // Handle Setting
                      Get.to(Desktopsetting());
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
                  Get.to(Desktopprofile());
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
                  Get.to(Desktopcontactus());
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

                  Get.to(Desktophelp());
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
                  Get.offAll(DesktopLayout());
                  print("Logout tapped");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

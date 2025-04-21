import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/web/WebContactus.dart';
import 'package:fyppakam/Pages/web/WebConvertBot.dart';
import 'package:fyppakam/Pages/web/WebHome.dart';
import 'package:fyppakam/Pages/web/WebLinkChecker.dart';
import 'package:fyppakam/Pages/web/WebLinkConvert.dart';
import 'package:fyppakam/Pages/web/WebProfile.dart';
import 'package:fyppakam/Pages/web/WebSetting.dart';
import 'package:fyppakam/Pages/web/WebShortner.dart';
import 'package:fyppakam/Pages/web/WebSocail.dart';
import 'package:fyppakam/Pages/web/WebTextRepalcer.dart';
import 'package:fyppakam/Pages/web/Webhelp.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Layouts/webLayout.dart';
import '../Pages/Desktop/DesktopHome.dart';
class Websidebar extends StatelessWidget {
  const Websidebar({super.key});

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
                  Get.offAll(Webhome()); // Navigate to the Home screen
                },),
              ListTile(
                leading: Icon(Icons.link),
                title: Text(
                  'Link Converter',
                  style: TextStyle(color: Color(0xFF43A121)), // Hex color #43A121
                ),
                onTap: () {
                  // Handle Link Converter
                  Get.to(Weblinkconvert());
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
                 Get.to(Webconvertbot());
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
               Get.to(Websocail());
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

                  Get.to(Webshortner());
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

                  Get.to(Webtextrepalcer());
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
               Get.to(Weblinkchecker());
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
                  Get.to(Websetting());
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
                  Get.to(Webprofile());
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
                  Get.to(Webcontactus());
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

                  Get.to(Webhelp());
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
                  Get.offAll(WebLayot());
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

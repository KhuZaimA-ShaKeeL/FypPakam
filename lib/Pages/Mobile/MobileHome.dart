import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyppakam/components/CustomDrawerMobile.dart'; // Ensure this import is correct
import 'package:fyppakam/components/pakamText.dart';
import 'package:get/get.dart';

class Mobilehome extends StatelessWidget {
  const Mobilehome({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a GlobalKey for the Scaffold
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey, // Assign the key to the Scaffold
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Custom AppBar in the body
              Container(
                margin: EdgeInsets.only(top: 50),
                //           padding: EdgeInsets.symmetric(horizontal: 16,),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.circular(10 // Rounded bottom corners
                      ),
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1, // Border width
                  ),
                ),
                child: Container(
                  //  margin: Ed,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.offAll(() => Mobilehome());
                        },
                        icon: Icon(Icons.home), // Home icon
                      ),
                      Expanded(
                        child: Center(
                          child:
                              pakAmText(fontSize: 20, letterspacing: 5), // Title
                        ),
                      ),
                      CircleAvatar(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                              CupertinoIcons.person_alt_circle), // Profile icon
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Second row
              SizedBox(
                height: 5,
              ),
              Container(
                //color: Colors.blue,

                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Open the drawer using the GlobalKey
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      icon: Icon(Icons.menu, size: 25), // Larger menu icon
                    ),
                    SizedBox(width: 5), // Add spacing between icon and text
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // Light grey background
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Center(
                          child: Text(
                            "Hi, PakAM User",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 5,
                  children: [
                    Image.asset("assets/images/CL.png"),
                    Image.asset("assets/images/TG.png"),
                    Image.asset("assets/images/WG.png"),
                    Image.asset("assets/images/BL.png"),
                    Image.asset("assets/images/AL.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Links Shared",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Image.asset("assets/images/Linechart.png"),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Links Clicked"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Image.asset("assets/images/Chart&Axis.png"),
              )

              // Add more content here if needed
            ],
          ),
        ),
      ),
      drawer: customDrawerMobile(), // Use your custom drawer widget here
    );
  }
}

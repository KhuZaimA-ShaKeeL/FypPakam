import 'package:flutter/material.dart';
import 'package:fyppakam/components/CustomDrawerMobile.dart'; // Ensure this import is correct
import 'package:fyppakam/components/customContainer.dart';
import 'package:fyppakam/components/mobileAppBarWidget.dart';
import 'package:fyppakam/components/mobileAppbarIntroWidget.dart';

class Mobilehome extends StatelessWidget {
  const Mobilehome({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a GlobalKey for the Scaffold
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey, // Assign the key to the Scaffold
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Custom AppBar in the body
              Mobileappbarwidget(),
              // Second row
              SizedBox(
                height: 5,
              ),
             Mobileappbarintrowidget(scaffoldKey: scaffoldKey),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 5,
                  children: [

                    customContainer(color: Color(0xFFEEF0AE), text: "Total links Converted", count: "49",imagePath: "assets/images/linkIcon.png",),
                    customContainer(color: Color(0xFFB7D3DF), text: "Total Telegrams channels", count: "10", imagePath: "assets/images/telegramIcon.png"),
                    customContainer(color: Color(0xFFB1EEBC), text: "Total WhatsApp groups", count: "5", imagePath: "assets/images/whatsappIcon.png"),
                    customContainer(color: Color(0xFFE3BDA5), text: "Total Bitly", count: "5", imagePath: "assets/images/bitlyIcon.png"),
                    customContainer(color: Color(0xFFB7D3DF), text: "Total Links auto-shared", count: "5", imagePath: "assets/images/autoSharedIcon.png"),
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

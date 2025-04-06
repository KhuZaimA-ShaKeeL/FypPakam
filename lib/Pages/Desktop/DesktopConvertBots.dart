import 'package:flutter/material.dart';
import 'package:fyppakam/components/customContainer.dart';
import 'package:fyppakam/components/customDesktopBotTile.dart';

import '../../components/DekstopSidebar.dart';
import '../../components/DesktopAppBarIntroWidget.dart';
import '../../components/DesktopAppbarWidget.dart';
import '../../components/customListTile.dart';
class Desktopconvertbots extends StatelessWidget {
  const Desktopconvertbots({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8), // Adding margin for the main body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppBar
            Desktopappbarwidget(),
            SizedBox(height: 20), // Space between AppBar and main content

            // Row to split Sidebar and Content
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Sidebar with scrollable content
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: Desktopsidebar(),
                      ),
                    ),
                  ),

                  SizedBox(width: 20), // Space between Sidebar and Content

                  // Right Content wrapped in SingleChildScrollView for vertical scrolling
                  Expanded(
                    flex: 8,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical, // Allows vertical scrolling
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Desktopappbarintrowidget(), // Intro section for the right content
                          SizedBox(height: 20), // Space between intro and custom containers
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF9DD6EE),
                              borderRadius: BorderRadiusDirectional.circular(10),
                            ),
                            height: 177,
                            width: 230,
                            child: Container(
                              margin: EdgeInsets.only(top: 15, left: 2, right: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/botIcon.png",
                                    height: 40, // Adjust image size relative to the container height
                                    width: 40, // Adjust image width relative to the container width
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5, // Adjust spacing between image and count based on container height
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                      fontSize: 20, // Adjust font size based on container height
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5, // Adjust spacing between count and text
                                  ),
                                  Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Total Available Bots",
                                      style: TextStyle(
                                        fontSize: 16, // Adjust font size based on container height
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          ListView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              Customdesktopbottile(
                                  botName: "Autoforwarding",
                                  botCost: "2",
                                  botUsername: "@pakamautoforwarding"),
                              SizedBox(height: 10,),
                              Customdesktopbottile(
                                  botName: "Shortner",
                                  botCost: "2",
                                  botUsername: "@pakamshortner"),
                              SizedBox(height: 10,),
                              Customdesktopbottile(
                                  botName: "Text Replacer",
                                  botCost: "2",
                                  botUsername: "@pakamtextreplacing"),
                              SizedBox(height: 10,),
                              Customdesktopbottile(
                                  botName: "Link Checking",
                                  botCost: "2",
                                  botUsername: "@pakamtextreplacing"),
                              SizedBox(height: 20),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

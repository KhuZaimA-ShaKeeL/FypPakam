import 'package:flutter/material.dart';
import 'package:fyppakam/components/DekstopSidebar.dart';
import 'package:fyppakam/components/DesktopAppBarIntroWidget.dart';
import 'package:fyppakam/components/DesktopAppbarWidget.dart';
import '../../components/customContainer.dart';

class Desktophome extends StatelessWidget {
  const Desktophome({super.key});

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
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.85,
                      padding: EdgeInsets.only(left: 5,right: 5, top: 10, ),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10) ,
                          border: Border.all(
                              width: 1
                          )
                      ),
                      child: SingleChildScrollView(
                        child:   Desktopsidebar(),

                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Space between Sidebar and Content

                  // Right Content wrapped in SingleChildScrollView for vertical scrolling
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.85,
                      margin: EdgeInsets.only(bottom: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10) ,
                          border: Border.all(
                              width: 1
                          )
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical, // Allows vertical scrolling
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Desktopappbarintrowidget(), // Intro section for the right content
                            SizedBox(height: 20), // Space between intro and custom containers

                            // Horizontal scrollable section for stats (containers)
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal, // Allows horizontal scrolling
                              child: Row(
                                spacing: 10,
                                children: [
                                  customContainer(
                                    color: Color(0xFFEEF0AE),
                                    text: "Total links Converted",
                                    count: "49",
                                    imagePath: "assets/images/linkIcon.png",
                                    height: MediaQuery.of(context).size.height*0.25,
                                    width: MediaQuery.of(context).size.width*0.15,
                                    isDesktop: true,
                                  ),
                                  customContainer(
                                    color: Color(0xFFB7D3DF),
                                    text: "Total Telegrams channels",
                                    count: "10",
                                    imagePath: "assets/images/telegramIcon.png",
                                    height: MediaQuery.of(context).size.height*0.25,
                                    width: MediaQuery.of(context).size.width*0.15,
                                    isDesktop: true,
                                  ),
                                  customContainer(
                                    color: Color(0xFFB1EEBC),
                                    text: "Total WhatsApp groups",
                                    count: "5",
                                    imagePath: "assets/images/whatsappIcon.png",
                                    height: MediaQuery.of(context).size.height*0.25,
                                    width: MediaQuery.of(context).size.width*0.15,
                                    isDesktop: true,
                                  ),
                                  customContainer(
                                    color: Color(0xFFE3BDA5),
                                    text: "Total Bitly",
                                    count: "5",
                                    imagePath: "assets/images/bitlyIcon.png",
                                    height: MediaQuery.of(context).size.height*0.25,
                                    width: MediaQuery.of(context).size.width*0.15,
                                    isDesktop: true,
                                  ),
                                  customContainer(
                                    color: Color(0xFFB7D3DF),
                                    text: "Total Links auto-shared",
                                    count: "5",
                                    imagePath: "assets/images/autoSharedIcon.png",
                                    height: MediaQuery.of(context).size.height*0.25,
                                    width: MediaQuery.of(context).size.width*0.15,
                                    isDesktop: true,
                                  ),
                                ],
                              ),
                            ),

                            // Horizontal scrollable graph image
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Image.asset("assets/images/Graph.png"),
                            ),
                          ],
                        ),
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

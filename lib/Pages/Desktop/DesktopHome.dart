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
                                  height: 177,
                                  width: 200,
                                  isDesktop: true,
                                ),
                                customContainer(
                                  color: Color(0xFFB7D3DF),
                                  text: "Total Telegrams channels",
                                  count: "10",
                                  imagePath: "assets/images/telegramIcon.png",
                                  height: 177,
                                  width: 200,
                                  isDesktop: true,
                                ),
                                customContainer(
                                  color: Color(0xFFB1EEBC),
                                  text: "Total WhatsApp groups",
                                  count: "5",
                                  imagePath: "assets/images/whatsappIcon.png",
                                  height: 177,
                                  width: 200,
                                  isDesktop: true,
                                ),
                                customContainer(
                                  color: Color(0xFFE3BDA5),
                                  text: "Total Bitly",
                                  count: "5",
                                  imagePath: "assets/images/bitlyIcon.png",
                                  height: 177,
                                  width: 200,
                                  isDesktop: true,
                                ),
                                customContainer(
                                  color: Color(0xFFB7D3DF),
                                  text: "Total Links auto-shared",
                                  count: "5",
                                  imagePath: "assets/images/autoSharedIcon.png",
                                  height: 177,
                                  width: 200,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

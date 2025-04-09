import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/Desktop/DesktopManage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/DekstopSidebar.dart';
import '../../components/DesktopAppBarIntroWidget.dart';
import '../../components/DesktopAppbarWidget.dart';
import '../../components/customContainer.dart';
import '../Mobile/manageMobile.dart';

class Desktopsocialpage extends StatelessWidget {
  const Desktopsocialpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        // Adding margin for the main body
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
                  SizedBox(width: 20),
                  // Space between Sidebar and Content

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
                        scrollDirection: Axis.vertical,
                        // Allows vertical scrolling
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Desktopappbarintrowidget(),
                            // Intro section for the right content
                            SizedBox(height: 20),
                            // Space between intro and custom containers
                            Row(
                              spacing: 5,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:MediaQuery.of(context).size.width*0.4,
                                   // color: Colors.black,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          spacing: 30,
                                          children: [
                                            customContainer(
                                              color: Color(0xFFB7D3DF),
                                              text: "Total Telegram Channels",
                                              count: "10",
                                              imagePath:
                                                  "assets/images/telegramIcon.png",
                                              isDesktop: true,
                                              height: MediaQuery.of(context).size.height*0.25,
                                              width: MediaQuery.of(context).size.width*0.15,
                                            ),
                                            customContainer(
                                              color: Color(0xFFB1EEBC),
                                              text: "Total WhatsApp Group",
                                              count: "5",
                                              imagePath:
                                                  "assets/images/whatsappIcon.png",
                                              height: MediaQuery.of(context).size.height*0.25,
                                              width: MediaQuery.of(context).size.width*0.15,
                                              isDesktop: true,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                print("Click on WhatsApp");
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30, vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF89E469),
                                                    border: Border.all(width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.add),
                                                    SizedBox(width: 5,),
                                                    Text(
                                                      "Add whatsApp",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                print("Clcik on Telegram");
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30, vertical: 10),
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF9DD6EE),
                                                    border: Border.all(width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.add),
                                                    SizedBox(width: 5,),
                                                    Text(
                                                      "Add Telegram",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Get.to(Desktopmanage());
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.3,
                                            padding:EdgeInsets.symmetric(horizontal: 5,vertical: 10) ,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFE6E9A3),
                                                border: Border.all(
                                                    width: 1
                                                ),
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.mode_edit_outlined),
                                                Text("Manage Groups And Channels",style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500
                                                ),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            )
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

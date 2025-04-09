import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/SwitchControllers.dart';
import '../../components/DekstopSidebar.dart';
import '../../components/DesktopAppBarIntroWidget.dart';
import '../../components/DesktopAppbarWidget.dart';
import '../../components/customContainer.dart';
class Desktopmanage extends StatelessWidget {
  const Desktopmanage({super.key});


  @override
  Widget build(BuildContext context) {
  final SwitchControllers switchControllerWhatsApp=Get.put(SwitchControllers(),tag: "WhatsAPP");
  final SwitchControllers switchControllerTelegram=Get.put(SwitchControllers(),tag:"Telegram");
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
                                Expanded(
                                    // color: Colors.black,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                              height: 177,
                                              width: 230,
                                            ),
                                            customContainer(
                                              color: Color(0xFFB1EEBC),
                                              text: "Total WhatsApp Group",
                                              count: "5",
                                              imagePath:
                                              "assets/images/whatsappIcon.png",
                                              height: 177,
                                              width: 230,
                                              isDesktop: true,
                                            ),
                                            Spacer(),

                                            Column(
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    print("Click on WhatsApp logout");
                                                  },
                                                  child: Container(
                                                    padding:EdgeInsets.symmetric(horizontal: 50,vertical: 15) ,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xFF89E469),
                                                        border: Border.all(
                                                            width: 1
                                                        ),
                                                        borderRadius: BorderRadius.circular(15)
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.logout,size:25,),
                                                      SizedBox(width: 10,),
                                                        Text("LogUut Whatsapp",style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight: FontWeight.w500
                                                        ),),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20,),
                                                InkWell(
                                                  onTap: () {
                                                    print("Click on Telegram Logout");
                                                  },
                                                  child: Container(
                                                    padding:EdgeInsets.symmetric(horizontal: 50,vertical: 15) ,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xFF9DD6EE),
                                                        border: Border.all(
                                                            width: 1
                                                        ),
                                                        borderRadius: BorderRadius.circular(15)
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.logout,size: 25,),
                                                        SizedBox(width: 10,),
                                                        Text("LogOut Telegram",style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight: FontWeight.w500
                                                        ),),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 50,),

                                          ],
                                        ),
                                        SizedBox(height: 50),
                                        Container(
                                          padding:EdgeInsets.symmetric(horizontal: 10,vertical: 15) ,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF89E469),
                                              border: Border.all(
                                                  width: 1
                                              ),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Text("WhatsApp Groups",style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500
                                          ),),
                                        ),
                                        SizedBox(height: 20),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(12),
                                            border: Border.all(color: Colors.grey.shade300),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                spacing: 5,
                                                children: [
                                                  Expanded(flex: 1, child: Text("# No.", style: TextStyle(fontWeight: FontWeight.bold))),

                                                  Expanded(flex: 4, child: Container(
                                                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                                    decoration: BoxDecoration(
                                                      color: Colors.greenAccent,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Text("Group Name"),
                                                  )),
                                                  Expanded(flex: 2, child: Container(
                                                    //onPressed: () {},
                                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                    decoration:BoxDecoration(
                                                      color: Colors.blueGrey,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Text("Auto-Sharing"),
                                                  )),
                                                  Expanded(flex: 1, child: Container(
                                                    //onPressed: () {},
                                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                    decoration:BoxDecoration(
                                                      color: Colors.redAccent,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Text("Delete"),
                                                  )),
                                                ],
                                              ),
                                              Divider(),
                                              // Add each WhatsApp group as a row:
                                              ...List.generate(5, (index) {
                                                List<String> groupNames = [
                                                  "Amazon Pakistan",
                                                  "Daraz Offers",
                                                  "Pakam Deals",
                                                  "Discount News",
                                                  "Electronics Discount items"
                                                ];

                      // Ensure switch list has same length
                                                if (switchControllerWhatsApp.isCheckedList.length < groupNames.length) {
                                                  for (int i = switchControllerWhatsApp.isCheckedList.length; i < groupNames.length; i++) {
                                                    switchControllerWhatsApp.addSwitch(false); // Adds 'false' for each new group
                                                  }
                                                }
                                                return Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Expanded(flex: 1, child: Text("${index + 1}.")),
                                                        Expanded(flex: 4, child: Text(groupNames[index])),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Obx(() => Switch(
                                                            value: switchControllerWhatsApp.isCheckedList[index],
                                                            onChanged: (val) {
                                                              switchControllerWhatsApp.setButton(index, val);
                                                            },
                                                            activeColor: Colors.green,
                                                          )),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(
                                                            onPressed: () {
                                                              // Add delete logic if needed
                                                            },
                                                            icon: Icon(Icons.delete, color: Colors.red),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(),
                                                  ],
                                                );


                                              }),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 50),
                                        Container(
                                          padding:EdgeInsets.symmetric(horizontal: 10,vertical: 15) ,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF9DD6EE),
                                              border: Border.all(
                                                  width: 1
                                              ),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Text("Telegram Groups",style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500
                                          ),),
                                        ),
                                        SizedBox(height: 20),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(12),
                                            border: Border.all(color: Colors.grey.shade300),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                spacing: 5,
                                                children: [
                                                  Expanded(flex: 1, child: Text("# No.", style: TextStyle(fontWeight: FontWeight.bold))),

                                                  Expanded(flex: 4, child: Container(
                                                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                                    decoration: BoxDecoration(
                                                      color: Colors.greenAccent,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Text("Group Name"),
                                                  )),
                                                  Expanded(flex: 2, child: Container(
                                                    //onPressed: () {},
                                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                    decoration:BoxDecoration(
                                                      color: Colors.blueGrey,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Text("Auto-Sharing"),
                                                  )),
                                                  Expanded(flex: 1, child: Container(
                                                    //onPressed: () {},
                                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                                    decoration:BoxDecoration(
                                                      color: Colors.redAccent,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Text("Delete"),
                                                  )),
                                                ],
                                              ),
                                              Divider(),
                                              // Add each WhatsApp group as a row:
                                              ...List.generate(5, (index) {
                                                List<String> groupNames = [
                                                  "Amazon Pakistan",
                                                  "Daraz Offers",
                                                  "Pakam Deals",
                                                  "Discount News",
                                                  "Electronics Discount items"
                                                ];

                      // Ensure switch list has same length
                                                if (switchControllerTelegram.isCheckedList.length < groupNames.length) {
                                                  for (int i = switchControllerTelegram.isCheckedList.length; i < groupNames.length; i++) {
                                                    switchControllerTelegram.addSwitch(false); // Adds 'false' for each new group
                                                  }
                                                }
                                                return Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Expanded(flex: 1, child: Text("${index + 1}.")),
                                                        Expanded(flex: 4, child: Text(groupNames[index])),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Obx(() => Switch(
                                                            value: switchControllerTelegram.isCheckedList[index],
                                                            onChanged: (val) {
                                                              switchControllerTelegram.setButton(index, val);
                                                            },
                                                            activeColor: Colors.green,
                                                          )),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(
                                                            onPressed: () {
                                                              // Add delete logic if needed
                                                            },
                                                            icon: Icon(Icons.delete, color: Colors.red),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(),
                                                  ],
                                                );


                                              }),
                                            ],
                                          ),
                                        ),


                                      ],
                                    ),
                                ),
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

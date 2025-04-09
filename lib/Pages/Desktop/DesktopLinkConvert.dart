import 'package:flutter/material.dart';
import 'package:fyppakam/Controller/SwitchController.dart';
import 'package:fyppakam/components/customContainer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/CustomButton.dart';
import '../../components/DekstopSidebar.dart';
import '../../components/DesktopAppBarIntroWidget.dart';
import '../../components/DesktopAppbarWidget.dart';
class Desktoplinkconvert extends StatelessWidget {
  const Desktoplinkconvert({super.key});

  @override
  Widget build(BuildContext context) {
    final SwitchController controller =Get.put(SwitchController(),tag: "link Checker");
    final linkController=TextEditingController();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Desktopappbarintrowidget(), // Intro section for the right content
                            SizedBox(height: 20), // Space between intro and custom containers
                            Row(
                              spacing: 5,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex:6,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Row(
                                          spacing: 10,
                                          children: [
                                            customContainer(
                                              color: Color(0xFFB1EEBC),
                                              text: "Total Links Converted",
                                              count: "49",
                                              imagePath: "assets/images/linkIcon.png",
                                              isDesktop: true,
                                              height: MediaQuery.of(context).size.height*0.25,
                                              width: MediaQuery.of(context).size.width*0.15,
                                            ),
                                            customContainer(
                                              color: Color(0xFFEAA982),
                                              text: "Remaining Count",
                                              count: "51",
                                              imagePath: "assets/images/shortnerIcon.png",
                                              height: MediaQuery.of(context).size.height*0.25,
                                              width: MediaQuery.of(context).size.width*0.15,
                                              isDesktop: true,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Text("Enter Link",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 10,),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width*0.4,
                                          child: TextField(
                                            minLines: 7,
                                            maxLines: 10,
                                            keyboardType: TextInputType.multiline,
                                            textInputAction: TextInputAction.newline,
                                            controller: linkController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: Column(

                                            children: [

                                              SizedBox(
                                                height: 10,
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width*0.3,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Icon(Icons.copy,size: 30,),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3,),
                                                    Custombutton(label: "Convert", radius: 20, onPressed: (){}),
                                                  ],
                                                ),
                                              )

                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(10),
                                        border: Border.all(width: 1),
                                        color: Color(0xFF96E7A5),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      //color: Color(0xFF96E7A5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Share After Converting",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                                          Obx(()=>
                                              Switch(value: controller.isChecked.value, onChanged:(value) {
                                                controller.setButton(value);
                                              },),
                                          )
                                        ],
                                      ),
                                    ))
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

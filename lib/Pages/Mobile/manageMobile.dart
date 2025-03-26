import 'package:flutter/material.dart';
import 'package:fyppakam/components/CustomDrawerMobile.dart';

import '../../components/customContainer.dart';
import '../../components/mobileAppBarWidget.dart';
import '../../components/mobileAppbarIntroWidget.dart';
class manageMobile extends StatelessWidget {
  manageMobile({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              Mobileappbarwidget(),
              SizedBox(height: 5),
              Mobileappbarintrowidget(scaffoldKey: scaffoldKey),
              SizedBox(height: MediaQuery.of(context).size.height*0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customContainer(
                    color: Color(0xFFB7D3DF),
                    text: "Total telegrams Channels",
                    count: "49",
                    imagePath: "assets/images/telegramIcon.png",
                  ),
                  customContainer(
                    color: Color(0xFFB1EEBC),
                    text: "Total WhatsApp group",
                    count: "5",
                    imagePath: "assets/images/whatsappIcon.png",
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        print("Click on whatsApp logout");
                      },
                      child: InkWell(
                        onTap: (){
                          print("Click on Telegram logout");
                        },
                        child: Container(
                          padding:EdgeInsets.symmetric(horizontal: 5,vertical: 10) ,
                          decoration: BoxDecoration(
                              color: Color(0xFF89E469),
                              border: Border.all(
                                  width: 1
                              ),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.logout),
                              Text("LogUut Whatsapp",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.symmetric(horizontal: 5,vertical: 10) ,
                      decoration: BoxDecoration(
                          color: Color(0xFF9DD6EE),
                          border: Border.all(
                              width: 1
                          ),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.logout),
                          Text("LogOut Telegram",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){

                },
                child: Container(
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
          ),
        ),
      ),
      drawer: customDrawerMobile(),
    );
  }
}

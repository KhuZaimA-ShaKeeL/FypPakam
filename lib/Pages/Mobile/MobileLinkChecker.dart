import 'package:flutter/material.dart';
import 'package:fyppakam/components/CustomButton.dart';
import 'package:fyppakam/components/CustomDrawerMobile.dart';
import 'package:fyppakam/components/customContainer.dart';
import 'package:fyppakam/components/mobileAppBarWidget.dart';
import 'package:fyppakam/components/mobileAppbarIntroWidget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'MobileHome.dart';

class Mobilelinkchecker extends StatelessWidget {
  const Mobilelinkchecker({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final linkController=TextEditingController();
    final statusController=TextEditingController();
    return Scaffold(
      key: scaffoldKey,
      //resizeToAvoidBottomInset: true, // Ensures the screen resizes when the keyboard appears
      body: SingleChildScrollView(
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
                    color: Color(0xFFB1EEBC),
                    text: "Total Links Converted",
                    count: "49",
                    imagePath: "assets/images/linkIcon.png",
                  ),
                  customContainer(
                    color: Color(0xFFEAA982),
                    text: "Remaining Count",
                    count: "51",
                    imagePath: "assets/images/linkIcon.png",
                  ),
                ],
              ),
              SizedBox(height: 16),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Enter Link",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    minLines:3,
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
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Link Status",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    minLines: 3,
                    maxLines: 10,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    controller: statusController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Custombutton(label: "Check", radius: 20, onPressed: (){})
            ],
          ),
        ),
      ),
      drawer: customDrawerMobile(),
    );

  }
}
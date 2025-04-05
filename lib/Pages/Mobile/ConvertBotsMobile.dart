import 'package:flutter/material.dart';
import 'package:fyppakam/components/customContainer.dart';
import 'package:fyppakam/components/customListTile.dart';

import '../../components/CustomDrawerMobile.dart';
import '../../components/mobileAppBarWidget.dart';
import '../../components/mobileAppbarIntroWidget.dart';

class convertBotsMobile extends StatelessWidget {
  convertBotsMobile({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              Mobileappbarwidget(),
              SizedBox(height: 5),
              Mobileappbarintrowidget(scaffoldKey: scaffoldKey),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              customContainer(
                color: Color(0xFF9DD6EE),
                text: "Total Available Bots",
                count: "5",
                imagePath: "assets/images/botIcon.png",
                height: 40,
                width: 40,
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  customListTile(
                      botName: "Autoforwarding",
                      botCost: "2",
                      botUsername: "@pakamautoforwarding"),
                  SizedBox(height: 10,),
                  customListTile(
                      botName: "Shortner",
                      botCost: "2",
                      botUsername: "@pakamshortner"),
                  SizedBox(height: 10,),
                  customListTile(
                      botName: "Text Replacer",
                      botCost: "2",
                      botUsername: "@pakamtextreplacing"),
                  SizedBox(height: 10,),
                  customListTile(
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
      drawer: customDrawerMobile(),
    );
  }
}

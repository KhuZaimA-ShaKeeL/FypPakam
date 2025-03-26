import 'package:flutter/material.dart';

import '../../components/CustomButton.dart';
import '../../components/CustomDrawerMobile.dart';
import '../../components/customContainer.dart';
import '../../components/mobileAppBarWidget.dart';
import '../../components/mobileAppbarIntroWidget.dart';
class Mobiletextreplace extends StatelessWidget {
   Mobiletextreplace({super.key});
   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

   @override
  Widget build(BuildContext context) {

    final productinfoController=TextEditingController();
    final copounController=TextEditingController();
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
                    text: "Total use counts",
                    count: "49",
                    imagePath: "assets/images/AbIcon.png",
                  ),
                  customContainer(
                    color: Color(0xFFEAA982),
                    text: "Remaining Count",
                    count: "51",
                    imagePath: "assets/images/AbIcon.png",
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
                      "Enter product info ",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    minLines:2,
                    maxLines: 10,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    controller: productinfoController,
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
                      "Enter your coupon code",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    minLines: 2,
                    maxLines: 10,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    controller: copounController,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(

                  children: [

                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.copy,size: 30,),
                      ],
                    ),
                    Custombutton(label: "Replace", radius: 20, onPressed: (){}),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: customDrawerMobile(),
    );
  }
}

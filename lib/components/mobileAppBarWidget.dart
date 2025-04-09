import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyppakam/components/pakamText.dart';
import 'package:get/get.dart';

import '../Pages/Mobile/MobileHome.dart';
class Mobileappbarwidget extends StatelessWidget {
  const Mobileappbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 50),
      //           padding: EdgeInsets.symmetric(horizontal: 16,),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey, // Border color
          width: 1, // Border width
        ),
      ),
      child: Container(
        //  margin: Ed,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.offAll(() => Mobilehome());
              },
              icon: Icon(Icons.home), // Home icon
            ),
            Expanded(
              child: Center(
                child:
                pakAmText(fontSize: 20, letterspacing: 5,fontWeight: FontWeight.w900,), // Title
              ),
            ),
            CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                    CupertinoIcons.person_alt_circle), // Profile icon
              ),
            ),
          ],
        ),
      ),
    );
  }
}

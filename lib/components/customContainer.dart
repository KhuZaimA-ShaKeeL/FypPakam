import 'package:flutter/material.dart';

class customContainer extends StatelessWidget {
  Color color;
  String imagePath;
  String count;
  String text;

  customContainer(
      {super.key,
      required this.color,
      required this.text,
      required this.count,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadiusDirectional.circular(10)),
      height: 101,
      width: 130,
      child: Container(
        margin: EdgeInsets.only(top: 15, left: 2, right: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath),


            SizedBox(
              height: 3,
            ),
            Text(
              count,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 3,
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

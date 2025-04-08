import 'package:flutter/material.dart';

class customContainer extends StatelessWidget {
  Color color;
  String imagePath;
  String count;
  String text;
  double? height;
  double? width;
  bool? isDesktop;

  customContainer({
    super.key,
    required this.color,
    required this.text,
    required this.count,
    required this.imagePath,
    this.height,
    this.width,
    this.isDesktop,
  });

  @override
  Widget build(BuildContext context) {
    // Set a default value for `isDesktop` if it is null
    bool desktop = isDesktop ?? false;  // Default to false if isDesktop is null

    double IconWidth = desktop ? 40 : 30;
    double IconHeight = desktop ? 40 : 30;

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      height: height ?? 101,
      width: width ?? 130,
      child: Container(
        margin: EdgeInsets.only(top: 15, left: 2, right: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: IconHeight, // Adjust image size relative to the container height
              width: IconWidth, // Adjust image width relative to the container width
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: (height ?? 101) * 0.05, // Adjust spacing between image and count based on container height
            ),
            Text(
              count,
              style: TextStyle(
                fontSize: (height ?? 101) * 0.15, // Adjust font size based on container height
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: (height ?? 101) * 0.05, // Adjust spacing between count and text
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                text,
                style: TextStyle(
                  fontSize: (height ?? 101) * 0.1, // Adjust font size based on container height
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

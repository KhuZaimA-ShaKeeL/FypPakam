import 'package:flutter/material.dart';
class pakAmText extends StatelessWidget {
  double fontSize;
  double letterspacing;
   pakAmText({super.key,required this.fontSize,required this.letterspacing});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "PAK",
            style: TextStyle(
              color: Colors.green,
              fontSize:fontSize,
              fontWeight: FontWeight.w900,
              letterSpacing:letterspacing,
            ),
          ),
          TextSpan(
            text: "AM",
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.w900,
              letterSpacing: letterspacing,
            ),
          ),
        ],
      ),
    );
  }
}

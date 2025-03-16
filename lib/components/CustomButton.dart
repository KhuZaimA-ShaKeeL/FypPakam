import 'package:flutter/material.dart';
class Custombutton extends StatelessWidget {
  String label;
  double radius;
  void Function()? onPressed;
   Custombutton({super.key,required this.label,required this.radius,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      child: ElevatedButton(onPressed: onPressed, child: Text(label),style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
        shape:RoundedRectangleBorder(side:BorderSide(width: 1),borderRadius: BorderRadius.circular(radius) ),
      ),),
    );
  }
}

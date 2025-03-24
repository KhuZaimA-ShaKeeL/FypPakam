import 'package:flutter/material.dart';
class Custombutton extends StatelessWidget {
  String label;
  double radius;
  void Function()? onPressed;
   Custombutton({super.key,required this.label,required this.radius,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width*0.7,
      child: ElevatedButton(onPressed: onPressed, child: Text(label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
        shape:RoundedRectangleBorder(side:BorderSide(width: 0),borderRadius: BorderRadius.circular(radius) ),
      ),),
    );
  }
}

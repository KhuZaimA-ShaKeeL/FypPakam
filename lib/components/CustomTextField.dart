import 'package:flutter/material.dart';
class Customtextfield extends StatelessWidget {
  String label;
  TextInputType keyboardType;
//  Icon?icon;
  TextEditingController controller;

  Customtextfield(
      {super.key,
        required this.label,
        required this.controller,
       // this.icon,
        required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller,
      keyboardType:keyboardType,
    //  autovalidateMode:  AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
        hintText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.black, // Border color
            width: 2.0, // Increase thickness
          ),
        ),
      ),


    );
  }
}

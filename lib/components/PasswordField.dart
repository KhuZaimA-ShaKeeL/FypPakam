import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/PsswordController.dart';

class Passwordfield extends StatelessWidget {
  String label;
  TextEditingController controller;
  Passwordfield({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    final PasswordController passController= Get.put(PasswordController());
    return Obx(() => TextField(
      controller: controller,
      obscureText:passController.isTrue.value ,

      decoration: InputDecoration(
          hintText: label,
          suffixIcon:IconButton(onPressed: passController.setObsecure, icon: passController.getIcon()) ,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 2)

          )

      ),
    ),);
  }
}

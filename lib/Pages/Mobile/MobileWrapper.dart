import 'package:flutter/material.dart';
import 'package:fyppakam/Controller/WrapperController.dart';
import 'package:fyppakam/Pages/Mobile/MobileLogin.dart';
import 'package:fyppakam/Pages/Mobile/MobileSignupPage.dart';
import 'package:get/get.dart';

class Mobilewrapper extends StatelessWidget {
  const Mobilewrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final Wrapper controller = Get.put(Wrapper());

    return Obx(() => controller.isLogin.value
        ? MobileLoginPage(onPressed: controller.toogle)
        : Mobilesignuppage(onPressed: controller.toogle));
  }
}

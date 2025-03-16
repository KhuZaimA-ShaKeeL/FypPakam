import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController {
  var isTrue = true.obs;

  void setObsecure(){
    isTrue.value=!isTrue.value;
  }

  Icon getIcon() {
    return isTrue.value
        ? Icon(CupertinoIcons.eye)
        : Icon(CupertinoIcons.eye_slash);
  }
}

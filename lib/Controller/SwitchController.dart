import 'package:get/get.dart';
class SwitchController extends GetxController{
  var isChecked = true.obs;

  void setButton(value) {
    isChecked.value = value;
  }
}
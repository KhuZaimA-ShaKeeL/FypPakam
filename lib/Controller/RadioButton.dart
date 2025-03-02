import 'package:get/get.dart';

class RadioButtonController extends GetxController {
  var isChecked = false.obs;

  void setButton(value) {
    isChecked.value = value;
  }
}

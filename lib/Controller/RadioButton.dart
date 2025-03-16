import 'package:get/get.dart';

class RadioButtonController extends GetxController {
  var isChecked = true.obs;

  void setButton(value) {
    isChecked.value = value;
  }
}

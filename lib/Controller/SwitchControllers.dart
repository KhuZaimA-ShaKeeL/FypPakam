import 'package:get/get.dart';
class SwitchControllers extends GetxController{
  RxList<bool> isCheckedList = <bool>[].obs;

  void addSwitch(bool initialValue) {
    isCheckedList.add(initialValue);
  }

  void setButton(int index, bool value) {
    if (index < isCheckedList.length) {
      isCheckedList[index] = value;
    }
  }
}
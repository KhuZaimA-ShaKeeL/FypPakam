import 'package:get/get.dart';

class Wrapper extends GetxController {
  var isLogin = true.obs;

  void toogle() {
    isLogin.value = !isLogin.value;
  }
}

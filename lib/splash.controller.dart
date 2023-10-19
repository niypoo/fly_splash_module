import 'package:get/get.dart';

class SplashController extends GetxController {
  // controller
  static SplashController get to => Get.find();

  // define timeout
  late Future timeout;
  // timeout duration in //minutes
  late int timeoutDuration = 3;
  // notify issue found
  RxBool issued = RxBool(false);

  @override
  void onInit() {
    timeout = Future.delayed(
      Duration(minutes: timeoutDuration),
      () {
        issued.value = true;
      },
    );
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

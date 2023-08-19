import 'package:fly_splash_module/splash.controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController(), permanent: true);
  }
}

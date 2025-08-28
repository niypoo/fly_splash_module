import 'package:fly_splash_module/interfaces/splashLoading.handler.dart';
import 'package:fly_splash_module/splashLoading.service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // controller
  static SplashController get to => Get.find();

  final SplashLoadingHandler handler = SplashLoadingService.to.handler;

  @override
  void onReady() async {
    super.onReady();
    await handler.redirect();
  }
}

import 'package:fly_splash_module/splashLoading.service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // controller
  static SplashController get to => Get.find();

  // Service
  final SplashLoadingService service = SplashLoadingService.to;
}

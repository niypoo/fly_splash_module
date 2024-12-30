import 'package:fly_splash_module/splashLoading.service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // controller
  static SplashController get to => Get.find();

  // loading Completed
  final RxBool completed = false.obs;

  // loading Errored
  final RxBool errored = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    SplashLoadingService.to.splashHandler.run().then(
      (_) {
        completed.value = true;
      },
    ).catchError(
      (_) {
        errored.value = true;
      },
    );
  }
}

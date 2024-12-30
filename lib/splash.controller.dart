import 'package:fly_splash_module/interfaces/splashLoading.handler.dart';
import 'package:fly_splash_module/splashLoading.service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // controller
  static SplashController get to => Get.find();

  // loading Completed
  final RxBool completed = false.obs;

  // loading Errored
  final RxBool errored = false.obs;

  final SplashLoadingHandler handler = SplashLoadingService.to.splashHandler;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    handler.onInit().then(
      (_) async {
        completed.value = true;
        await handler.onReady();
      },
    ).catchError(
      (_) async {
        errored.value = true;
        await handler.onError();
      },
    );
  }
}

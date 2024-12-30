import 'package:fly_splash_module/interfaces/splashLoading.handler.dart';
import 'package:get/get.dart';

class SplashLoadingService extends GetxService {
  // define
  static SplashLoadingService get to => Get.find();

  // await jobs
  final SplashLoadingHandler splashHandler;
  
  // constructor
  SplashLoadingService({required this.splashHandler});

  Future<SplashLoadingService> init() async {
    return this;
  }

}

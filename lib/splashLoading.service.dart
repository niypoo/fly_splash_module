import 'package:get/get.dart';

class SplashLoadingService extends GetxService {
  // define
  static SplashLoadingService get to => Get.find();

  // await jobs
  final Future<void> Function() loadingJobs;
  
  // constructor
  SplashLoadingService({required this.loadingJobs});

  Future<SplashLoadingService> init() async {
    return this;
  }

}

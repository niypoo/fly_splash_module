import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashLoadingService extends GetxService {
  // define
  static SplashLoadingService get to => Get.find();

  // await jobs
  final Widget spinnerWidget;
  RxString loadingText = 'Loading...'.obs;
  
  // constructor
  SplashLoadingService({
   required this.spinnerWidget,
  });

  Future<SplashLoadingService> init() async {
    return this;
  }

}

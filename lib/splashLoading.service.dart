import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashLoadingService extends GetxService {
  // define
  static SplashLoadingService get to => Get.find();

  // properties
  final Widget spinner;
  final RxString message = 'Loading...'.obs;

  // constructor
  SplashLoadingService({required this.spinner});

  Future<SplashLoadingService> init() async {
    return this;
  }

  set setMessage(String msg) => message.value = msg;
}

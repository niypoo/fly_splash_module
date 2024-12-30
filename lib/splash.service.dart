import 'package:get/get.dart';

class SplashService extends GetxService {

  // define
  static SplashService get to => Get.find();

  final RxBool completed = false.obs;
  final RxBool errored = false.obs;
  final Future<void> Function() payload;

  SplashService({required this.payload});

  Future<SplashService> init() async {
    await payload().then((_) {
      completed.value = true;
    }).catchError((e) {
      errored.value = true;
    });

    return this;
  }
}

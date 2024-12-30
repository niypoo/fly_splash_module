import 'package:flutter/widgets.dart';
import 'package:fly_splash_module/splash.controller.dart';
import 'package:fly_splash_module/widgets/dedication.widget.dart';
import 'package:fly_splash_module/widgets/loading.widget.dart';
import 'package:fly_splash_module/widgets/timeout.widget.dart';
import 'package:get/get.dart';

class PortraitLayout extends GetView<SplashController> {
  const PortraitLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(),
        Obx(
          () => controller.errored.isFalse
              ? const LoadingWidget()
              : const Timeout(),
        ),
        const Spacer(),
        const Dedication(),
      ],
    );
  }
}

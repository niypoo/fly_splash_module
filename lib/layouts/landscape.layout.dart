import 'package:flutter/widgets.dart';
import 'package:fly_splash_module/splash.controller.dart';
import 'package:fly_splash_module/widgets/completed.widget.dart';
import 'package:fly_splash_module/widgets/dedication.widget.dart';
import 'package:fly_splash_module/widgets/loading.widget.dart';
import 'package:fly_splash_module/widgets/timeout.widget.dart';
import 'package:fly_ui/views/layouts/landscapeView.widget.dart';
import 'package:get/get.dart';

class LandscapeLayout extends GetView<SplashController> {
  const LandscapeLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyLandscapeView(
      childA: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () {
              if (controller.errored.isFalse) {
                return const Timeout();
              }

              if (controller.completed.isFalse) {
                return const LoadingWidget();
              }

              return const CompletedWidget();
            },
          ),
        ],
      ),
      childB: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Dedication(),
        ],
      ),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:fly_splash_module/splash.controller.dart';
import 'package:fly_splash_module/widgets/dedication.widget.dart';
import 'package:fly_splash_module/widgets/loading.widget.dart';
import 'package:fly_ui/views/widgets/images/image.widget.dart';
import 'package:get/get.dart';

class PortraitLayout extends GetView<SplashController> {
  const PortraitLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Obx(
          () => controller.issued.isFalse
              ? const LoadingWidget()
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FlyImage(
                      url: '/assets/images/characters/pain.svg',
                      height: 200,
                      width: 200,
                    ),
                    Text('Something went wrong'.tr),
                  ],
                ),
        ),
        const Spacer(),
        const Dedication(),
      ],
    );
  }
}

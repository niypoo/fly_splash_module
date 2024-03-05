import 'package:flutter/material.dart';
import 'package:fly_splash_module/layouts/landscape.layout.dart';
import 'package:fly_splash_module/layouts/portrait.layout.dart';
import 'package:fly_splash_module/splash.controller.dart';
import 'package:fly_ui/views/layouts/responsiveView.widget.dart';
import 'package:fly_ui/views/layouts/scaffoldLayout.widget.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyScaffold.padding(
      child: const FlyLayoutResponsiveView(
        landscape: LandscapeLayout(),
        portrait: PortraitLayout(),
      ),
    );
  }
}

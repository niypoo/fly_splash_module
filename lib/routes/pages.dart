import 'package:fly_splash_module/routes/routes.dart';
import 'package:fly_splash_module/splash.binding.dart';
import 'package:fly_splash_module/splash.view.dart';
import 'package:get/get.dart';

class SplashPages {
  static final routes = [
    // splash
    GetPage(
      name: SplashRoutesNames.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
    )
  ];
}

import 'package:flutter/material.dart';
import 'package:fly_splash_module/splash.controller.dart';
import 'package:fly_splash_module/splashLoading.service.dart';
import 'package:fly_ui/extensions/responsive.extension.dart';
import 'package:get/get.dart';

class LoadingWidget extends GetView<SplashController> {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Loading
          SplashLoadingService.to.spinnerWidget,

          SizedBox(height: 12.sp),

          Obx(() {
            return Text(
              SplashLoadingService.to.loadingText.value.tr,
              style: Get.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
                color: Get.theme.primaryColor,
              ),
            );
          }),
        ],
      ),
    );
  }
}

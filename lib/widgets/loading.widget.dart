import 'package:flutter/material.dart';
import 'package:fly_ui/extensions/responsive.extension.dart';
import 'package:get/get.dart';
import 'package:loading_service/helpers/spinner.helper.dart';

class LoadingWidget extends StatelessWidget {
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
          SpinnerHelper.basic(size: 80.sp),
          
          SizedBox(height: 10.sp),

          Text(
            'Loading...'.tr,
            style: Get.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Get.theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

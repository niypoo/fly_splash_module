import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_service/helpers/spinner.helper.dart';
import 'package:patata_responsive/patata_responsive.dart';

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
          
          SizedBox(height: 12.sp),

          Text(
            'Loading...'.tr,
            style: Get.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
              color: Get.theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

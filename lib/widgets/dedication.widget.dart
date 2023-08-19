import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dedication extends StatelessWidget {
  const Dedication({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          'Developed by'.tr,
          style: Get.textTheme.labelSmall!.copyWith(height: 1),
          maxFontSize: 16,
          minFontSize: 11,
          maxLines: 1,
        ),

        // Mahmoud Nabhan
        AutoSizeText(
          'Mahmoud Nabhan'.tr,
          style: Get.textTheme.titleSmall!.copyWith(height: 1.5),
          maxFontSize: 26,
          minFontSize: 19,
          maxLines: 1,
        ),

        // Mahmoud Nabhan
        AutoSizeText(
          'Made from 🇪🇬 Egypt with ❤️ Love.'.tr,
          style: Get.textTheme.labelMedium!.copyWith(height: 1.2),
          maxFontSize: 20,
          minFontSize: 13,
          maxLines: 1,
        ),
      ],
    );
  }
}

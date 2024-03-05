import 'package:flutter/widgets.dart';
import 'package:fly_ui/views/widgets/images/image.widget.dart';
import 'package:get/get.dart';

class Timeout extends StatelessWidget {
  const Timeout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const FlyImage(
          url: 'assets/icon/icon.svg',
          height: 150,
          width: 150,
        ),
        Text(
          'Something went wrong'.tr,
          style: Get.textTheme.bodyLarge,
        ),
        const SizedBox(height: 5),
        Text(
          'Try closing the application and opening it again.'.tr,
          style: Get.textTheme.bodyMedium,
        ),
      ],
    );
  }
}

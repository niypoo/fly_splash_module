
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
            url: 'assets/images/characters/pain.svg',
            height: 120,
            width: 120,
          ),
          Text('Something went wrong'.tr),
        ],
      );
  }
}

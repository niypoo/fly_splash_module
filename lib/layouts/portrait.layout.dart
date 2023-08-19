import 'package:flutter/widgets.dart';
import 'package:fly_splash_module/widgets/dedication.widget.dart';
import 'package:fly_splash_module/widgets/loading.widget.dart';

class PortraitLayout extends StatelessWidget {
  const PortraitLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LoadingWidget(),
        Dedication(),
      ],
    );
  }
}

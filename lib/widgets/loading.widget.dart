import 'package:flutter/material.dart';
import 'package:loading_service/helpers/spinner.helper.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: SpinnerHelper.verticalTextSpinner());
  }
}

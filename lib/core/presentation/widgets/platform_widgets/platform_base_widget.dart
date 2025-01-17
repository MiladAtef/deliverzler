import 'package:deliverzler/core/presentation/helpers/platform_helper.dart';
import 'package:flutter/material.dart';

/// Base class to be extended by all platform widgets
abstract class PlatformBaseWidget<A extends Widget, I extends Widget>
    extends StatelessWidget {
  const PlatformBaseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformHelper.isMaterialApp()
        ? createMaterialWidget(context)
        : createCupertinoWidget(context);
  }

  A createMaterialWidget(BuildContext context);

  I createCupertinoWidget(BuildContext context);
}

import 'package:delivery_app_mobile/src/core/router/app_page.dart';
import 'package:delivery_app_mobile/src/shared/presentation/pages/layout_stack_pattern_center_top.dart';
import 'package:delivery_app_mobile/src/shared/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 7),
      () => AppPage.router.push(
        Routes.ON_BOARDING_1,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const LayoutStackPatternCenterTop(
      children: [
        Center(
          child: AppLogo(),
        )
      ],
    );
  }
}

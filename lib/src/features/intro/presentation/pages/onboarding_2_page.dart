import 'package:delivery_app_mobile/src/core/helper/helper.dart';
import 'package:delivery_app_mobile/src/core/router/app_page.dart';
import 'package:delivery_app_mobile/src/core/translations/l10n.dart';
import 'package:delivery_app_mobile/src/shared/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding2Page extends StatelessWidget {
  const Onboarding2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 58.h),
        Image.asset(
          Helper.getImagePath("onboarding_2_3.png"),
          width: 1.sw,
          height: 434.h,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 40.h),
        Text(
          S.of(context).title_onboarding_3,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 20.h),
        Text(
          S.of(context).sub_title_onboarding_3,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: 42.h),
        AppButton(
          // onPressed: () => AppPage.router.push(Routes.HOME),
          onPressed: () async {
            await Future.delayed(
              const Duration(milliseconds: 0),
              () => AppPage.router.pushReplacement(Routes.HOME),
            );
          },
          text: S.of(context).next,
        ),
      ]),
    );
  }
}

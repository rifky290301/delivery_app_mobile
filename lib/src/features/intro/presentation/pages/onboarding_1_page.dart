import 'package:delivery_app_mobile/src/core/helper/helper.dart';
import 'package:delivery_app_mobile/src/core/router/app_page.dart';
import 'package:delivery_app_mobile/src/core/translations/l10n.dart';
import 'package:delivery_app_mobile/src/shared/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 58.h),
        Image.asset(
          Helper.getImagePath("onboarding_2_2.png"),
          width: 1.sw,
          height: 434.h,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 40.h),
        Text(
          S.of(context).title_onboarding_2,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 20.h),
        Text(
          S.of(context).sub_title_onboarding_2,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: 42.h),
        AppButton(
          text: S.of(context).next,
          onPressed: () {
            AppPage.router.push(Routes.ON_BOARDING_2);
          },
        ),
      ]),
    );
  }
}

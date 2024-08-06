import 'package:delivery_app_mobile/src/core/helper/helper.dart';
import 'package:delivery_app_mobile/src/core/styles/app_gradients.dart';
import 'package:delivery_app_mobile/src/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        Helper.getImagesLogo("logo.png"),
        width: 175.w,
        height: 139.h,
      ),
      ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => AppGradients.primary.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: const Text('FoodNinja', style: AppTextStyle.logoTitle),
      ),
      Text(
        'Deliever Favorite Food',
        style: Theme.of(context).textTheme.headlineSmall,
      )
    ]);
  }
}

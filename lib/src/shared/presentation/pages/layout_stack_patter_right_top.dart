import 'package:delivery_app_mobile/src/core/helper/helper.dart';
import 'package:delivery_app_mobile/src/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LayoutStackPatternRightTop extends StatelessWidget {
  final List<Widget> children;
  const LayoutStackPatternRightTop({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Align(
        alignment: Alignment.topCenter,
        child: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              (Helper.isDarkTheme ? AppColors.scaffoldBackgroundColorDark : AppColors.scaffoldBackgroundColorLight).withOpacity(.1),
              (Helper.isDarkTheme ? AppColors.scaffoldBackgroundColorDark : AppColors.scaffoldBackgroundColorLight).withOpacity(.1),
            ],
          ).createShader(bounds),
          child: SvgPicture.asset(
            Helper.getSvgImages('pattern_2.svg'),
            width: 1.sw,
          ),
        ),
      ),
      ...children,
    ]));
  }
}

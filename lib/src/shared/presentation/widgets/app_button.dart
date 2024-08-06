import 'package:delivery_app_mobile/src/core/styles/app_gradients.dart';
import 'package:delivery_app_mobile/src/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  // final BorderRadiusGeometry? borderRadius;
  final double? width;
  final VoidCallback? onPressed;
  final String text;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    // this.borderRadius,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
        gradient: AppGradients.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(text, style: AppTextStyle.buttonTitle),
      ),
    );
  }
}

import 'package:delivery_app_mobile/src/shared/presentation/pages/layout_stack_patter_right_top.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LayoutStackPatternRightTop(
      children: [
        Center(
          child: Text('Home pageee'),
        )
      ],
    );
  }
}

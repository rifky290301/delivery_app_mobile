import 'dart:developer';

import 'package:delivery_app_mobile/src/core/styles/app_colors.dart';
import 'package:delivery_app_mobile/src/core/styles/app_gradients.dart';
import 'package:delivery_app_mobile/src/core/styles/app_text_style.dart';
import 'package:delivery_app_mobile/src/core/translations/l10n.dart';
import 'package:delivery_app_mobile/src/core/utils/injections.dart';
import 'package:delivery_app_mobile/src/core/utils/log/app_logger.dart';
import 'package:delivery_app_mobile/src/features/auth/domain/usecase/auth_usecase.dart';
import 'package:delivery_app_mobile/src/features/auth/presentation/bloc/login_bloc.dart';
import 'package:delivery_app_mobile/src/features/auth/presentation/bloc/login_event.dart';
import 'package:delivery_app_mobile/src/features/auth/presentation/bloc/login_state.dart';
import 'package:delivery_app_mobile/src/shared/presentation/pages/layout_stack_pattern_center_top.dart';
import 'package:delivery_app_mobile/src/shared/presentation/snackbar/base_snackbar.dart';
import 'package:delivery_app_mobile/src/shared/presentation/widgets/app_button.dart';
import 'package:delivery_app_mobile/src/shared/presentation/widgets/app_logo.dart';
import 'package:delivery_app_mobile/src/shared/presentation/widgets/app_text_field.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutStackPatternCenterTop(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 48.h),
                const AppLogo(),
                SizedBox(height: 64.h),
                Text(
                  S.of(context).login_to_your_account,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: BlocProvider(
                    create: (context) => LoginBloc(sl<AuthUseCase>()),
                    child: BlocListener<LoginBloc, LoginState>(
                      listener: (context, state) {
                        logger.info('--------------------- $state');
                        if (state is LoginFailure) {
                          showSnackBar(context, text: 'Gagal login');
                        }
                      },
                      child: BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state) {
                          return Column(children: [
                            AppTextField(
                              hintText: 'Email.',
                              controller: _emailController,
                            ),
                            AppTextField(
                              hintText: 'Password',
                              controller: _passwordController,
                            ),
                            Text(
                              S.of(context).or_continue,
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 12.sp),
                            ),
                            SizedBox(height: 20.h),
                            Row(children: [
                              const _BoxLogo(
                                icon: Icons.facebook,
                                text: 'Facebook',
                              ),
                              SizedBox(width: 20.w),
                              const _BoxLogo(
                                icon: Icons.g_mobiledata,
                                text: 'Google',
                              ),
                            ]),
                            SizedBox(height: 20.h),
                            ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (bounds) => AppGradients.primary.createShader(
                                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                              ),
                              child: Text(
                                S.of(context).forgot_password,
                                style: AppTextStyle.bentonSansMedium,
                              ),
                            ),
                            SizedBox(height: 36.h),
                            if (state is LoginLoading)
                              const CircularProgressIndicator()
                            else
                              AppButton(
                                onPressed: () async {
                                  context.read<LoginBloc>().add(
                                        LoginButtonPressed(
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                        ),
                                      );
                                },
                                text: 'Login',
                              ),
                            const SizedBox(height: 36),
                          ]);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _BoxLogo extends StatelessWidget {
  final IconData icon;
  final String text;
  const _BoxLogo({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderEnable),
      ),
      child: Row(children: [
        Icon(icon),
        SizedBox(width: 12.w),
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 12.sp),
        )
      ]),
    ));
  }
}

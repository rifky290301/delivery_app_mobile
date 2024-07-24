// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find your Comfort Food here`
  String get title_onboarding_2 {
    return Intl.message(
      'Find your Comfort Food here',
      name: 'title_onboarding_2',
      desc: '',
      args: [],
    );
  }

  /// `Here You Can find a chef or dish for every taste and color. Enjoy!`
  String get sub_title_onboarding_2 {
    return Intl.message(
      'Here You Can find a chef or dish for every taste and color. Enjoy!',
      name: 'sub_title_onboarding_2',
      desc: '',
      args: [],
    );
  }

  /// `Food Ninja is Where Your Comfort Food Lives`
  String get title_onboarding_3 {
    return Intl.message(
      'Food Ninja is Where Your Comfort Food Lives',
      name: 'title_onboarding_3',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy a fast and smooth food delivery at your doorstep`
  String get sub_title_onboarding_3 {
    return Intl.message(
      'Enjoy a fast and smooth food delivery at your doorstep',
      name: 'sub_title_onboarding_3',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Your Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Your Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Or Continue With`
  String get or_continue {
    return Intl.message(
      'Or Continue With',
      name: 'or_continue',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up For Free`
  String get sign_up {
    return Intl.message(
      'Sign Up For Free',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Fill in your bio to get started`
  String get sign_up_process_title {
    return Intl.message(
      'Fill in your bio to get started',
      name: 'sign_up_process_title',
      desc: '',
      args: [],
    );
  }

  /// `This data will be displayed in your account profile for security`
  String get sign_up_process_subtitle {
    return Intl.message(
      'This data will be displayed in your account profile for security',
      name: 'sign_up_process_subtitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'id'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

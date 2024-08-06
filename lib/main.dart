import 'package:delivery_app_mobile/src/core/helper/helper.dart';
import 'package:delivery_app_mobile/src/core/router/app_page.dart';
import 'package:delivery_app_mobile/src/core/styles/app_theme.dart';
import 'package:delivery_app_mobile/src/core/translations/l10n.dart';
import 'package:delivery_app_mobile/src/core/utils/injections.dart';
import 'package:delivery_app_mobile/src/shared/data/data_sources/app_shared_prefs.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'src/shared/domain/entities/language_enum.dart';

// final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inject all dependencies
  await initInjections();

  // Instance navigation app
  AppPage.instance;

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

  runApp(DevicePreview(
    builder: (context) {
      return const App();
    },
    enabled: false,
  ));
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();

  static void setLocale(BuildContext context, LanguageEnum newLocale) {
    _AppState state = context.findAncestorStateOfType()!;
    state.setState(() {
      state.locale = Locale(newLocale.name);
    });
    sl<AppSharedPrefs>().setLang = newLocale;
  }
}

class _AppState extends State<App> with WidgetsBindingObserver {
  Locale locale = const Locale("en");
  final GlobalKey<ScaffoldMessengerState> snackBarKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    if (mounted) {
      LanguageEnum newLocale = Helper.getLang();
      setState(() {
        locale = Locale(newLocale.name);
      });
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppNotifier(),
      child: Consumer<AppNotifier>(
        builder: (context, value, child) => ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => MaterialApp.router(
            title: 'Ny Times Articles App',
            scaffoldMessengerKey: snackBarKey,
            // onGenerateRoute: AppRouter.generateRoute,
            theme: Helper.isDarkTheme ? darkAppTheme : appTheme,
            routerConfig: AppPage.router,
            debugShowCheckedModeBanner: false,
            locale: locale,
            builder: DevicePreview.appBuilder,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            // navigatorKey: navigatorKey,
            supportedLocales: const [
              Locale("ar"),
              Locale("en"),
            ],
            // home: const IntroPage(),
          ),
        ),
      ),
    );
  }
}

// App notifier for Lang, Theme, ...
class AppNotifier extends ChangeNotifier {
  late bool darkTheme;

  AppNotifier() {
    _initialise();
  }

  Future _initialise() async {
    darkTheme = Helper.isDarkTheme;

    notifyListeners();
  }

  void updateThemeTitle(bool newDarkTheme) {
    darkTheme = newDarkTheme;
    if (Helper.isDarkTheme) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    }
    notifyListeners();
  }
}

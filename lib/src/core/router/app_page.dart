import 'package:delivery_app_mobile/src/features/auth/presentation/pages/login_page.dart';
import 'package:delivery_app_mobile/src/features/auth/presentation/pages/register_page.dart';
import 'package:delivery_app_mobile/src/features/home/presentation/pages/home_page.dart';
import 'package:delivery_app_mobile/src/features/intro/presentation/pages/onboarding_1_page.dart';
import 'package:delivery_app_mobile/src/features/intro/presentation/pages/onboarding_2_page.dart';
import 'package:delivery_app_mobile/src/features/intro/presentation/pages/splash_screen_page.dart';
import 'package:delivery_app_mobile/src/shared/presentation/pages/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.dart';

class AppPage {
  static final AppPage _instance = AppPage._internal();
  static AppPage get instance => _instance;
  factory AppPage() => _instance;

  static late final GoRouter router;

  BuildContext get context => router.routerDelegate.navigatorKey.currentContext!;
  // GoRouterDelegate get routerDelegate => router.routerDelegate;
  // GoRouteInformationParser get routeInformationParser => router.routeInformationParser;

  AppPage._internal() {
    final routes = [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _NavigatorKey.parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: _NavigatorKey.homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.HOME,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const HomePage(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _NavigatorKey.profileTabNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.PROFILE,
                pageBuilder: (context, state) {
                  return getPage(
                    child: const HomePage(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _NavigatorKey.purchaseTabNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.PURCHASE,
                pageBuilder: (context, state) {
                  return getPage(
                    child: const HomePage(),
                    state: state,
                  );
                },
              ),
            ],
          ),
        ],
        pageBuilder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) {
          return getPage(
            child: BottomNavigationPage(
              child: navigationShell,
            ),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _NavigatorKey.parentNavigatorKey,
        path: Routes.LOGIN,
        pageBuilder: (context, state) {
          return getPageSlide(
            child: LoginPage(),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _NavigatorKey.parentNavigatorKey,
        path: Routes.REGISTER,
        pageBuilder: (context, state) {
          return getPage(
            child: const RegisterPage(),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _NavigatorKey.parentNavigatorKey,
        path: Routes.ON_BOARDING_2,
        pageBuilder: (context, state) {
          return getPageSlide(
            child: const Onboarding2Page(),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _NavigatorKey.parentNavigatorKey,
        path: Routes.ON_BOARDING_1,
        pageBuilder: (context, state) {
          return getPageSlide(
            child: const Onboarding1Page(),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _NavigatorKey.parentNavigatorKey,
        path: Routes.SPLASH_SCREEN,
        pageBuilder: (context, state) {
          return getPage(
            child: const SplashScreenPage(),
            state: state,
          );
        },
      ),
    ];

    router = GoRouter(
      navigatorKey: _NavigatorKey.parentNavigatorKey,
      initialLocation: Routes.SPLASH_SCREEN,
      routes: routes,
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }

  static CustomTransitionPage getPageSlide({
    required Widget child,
    required GoRouterState state,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: Durations.extralong2,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.decelerate;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

part of 'app_page.dart';

class Routes {
  Routes._();

  static const String SPLASH_SCREEN = '/splash-screen';
  static const String ON_BOARDING_1 = '/on-boarding-1';
  static const String ON_BOARDING_2 = '/on-boarding-2';

  static const String LOGIN = '/login';
  static const String REGISTER = '/register';

  static const String HOME = '/home';
  static const String PROFILE = '/profile';
  static const String PURCHASE = '/purchase';
  static const String CHAT = '/chat';
}

class _NavigatorKey {
  _NavigatorKey._();
  static final GlobalKey<NavigatorState> parentNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeTabNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> profileTabNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> purchaseTabNavigatorKey = GlobalKey<NavigatorState>();
}

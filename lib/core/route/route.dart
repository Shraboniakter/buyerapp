import 'package:get/get.dart';
import 'package:buyerapp/feature/splash/screen/splash_screen.dart';
import 'package:buyerapp/feature/auth/screen/login_or_signup_screen.dart';

class AppRoutes {
  static const String splash = '/splash';

  static const String login = '/login';

  final List<GetPage> pages = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: login, page: () => LoginOrSignupScreen()),
  ];
}

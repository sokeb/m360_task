import 'package:go_router/go_router.dart';
import 'package:m360_task/modules/auth/send_otp/send_otp.dart';
import 'package:m360_task/modules/auth/sign_in/view/sign_in_page.dart';
import 'package:m360_task/modules/auth/veryfy_otp/veryfy_otp.dart';
import 'package:m360_task/modules/splash/splash.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: <RouteBase>[
      SplashPage.route,
      SignInPage.route,
      SendOtpPage.route,
      VerifyOtpPage.route,
    ],
  );
}

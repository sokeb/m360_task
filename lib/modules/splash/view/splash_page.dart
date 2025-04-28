import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m360_task/modules/splash/view/splash_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static final route = GoRoute(
    path: '/splash',
    name: 'splash',
    builder: (context, state) => const SplashPage(),
  );

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}

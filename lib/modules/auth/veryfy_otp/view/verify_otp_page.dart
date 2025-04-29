import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m360_task/modules/auth/veryfy_otp/veryfy_otp.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({super.key});

  static final route = GoRoute(
    path: '/verify_otp',
    name: 'verify_otp',
    builder: (context, state) => const VerifyOtpPage(),
  );

  @override
  Widget build(BuildContext context) {
    return const VerifyOtpView();
  }
}

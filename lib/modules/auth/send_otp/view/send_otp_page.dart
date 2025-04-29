import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m360_task/modules/auth/send_otp/send_otp.dart';


class SendOtpPage extends StatelessWidget {
  const SendOtpPage({super.key});


  static final route = GoRoute(
    path: '/send_otp',
    name: 'send_otp',
    builder: (context, state) => const SendOtpPage(),
  );

  @override
  Widget build(BuildContext context) {
    return const SendOtpView();
  }
}

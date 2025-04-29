import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m360_task/shared/widgets/widgets.dart';

class SendOtpView extends StatefulWidget {
  const SendOtpView({super.key});

  @override
  State<SendOtpView> createState() => _SendOtpViewState();
}

class _SendOtpViewState extends State<SendOtpView> {
  final TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
              const Text(
                'Send OTP',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Recover your account in easy steps',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 105),
              AppTextField(
                labelText: 'Email',
                hintText: 'user@example.com',
                controller: emailController,
              ),
              const SizedBox(height: 140),
              // Sign In Button
              AppButton(
                text: 'Sign in',
                onPressed: () {
                  context.pushNamed('verify_otp');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}

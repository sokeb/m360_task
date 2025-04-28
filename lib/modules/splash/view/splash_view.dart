import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) context.goNamed('sign_in');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              child: Center(
                child: AspectRatio(
                  aspectRatio: 214 / 100,
                  child: Image.asset(
                    'assets/icons/logo.png',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: RichText(
                  text: const TextSpan(
                    text: 'Powered by ', // Fixed typo in "Powered by"
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFADADAD),
                    ),
                    children: [
                      TextSpan(
                        text: 'M360 ICT',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF47BA80),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

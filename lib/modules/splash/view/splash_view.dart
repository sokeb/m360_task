import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            child: Center(
              child: Text(
                'Splash Screen',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: RichText(text: TextSpan(
                text: 'Power By ',
                style: Theme.of(context).textTheme.headlineMedium,
                children: [
                  TextSpan(
                    text: 'M360 ICT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m360_task/shared/widgets/widgets.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Let's save environment together",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 32),

                AppTextField(
                  labelText: 'Email',
                  hintText: 'user@example.com',
                  controller: emailController,
                ),
                const SizedBox(height: 24),

                AppTextField(
                  labelText: 'Password',
                  hintText: '********',
                  controller: passwordController,
                  suffixIcon: const Icon(Icons.visibility_off),
                ),

                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          side: const BorderSide(
                            color: Color(0xFF47BA80),
                          ),
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgotten Password',
                        style: TextStyle(
                          color: Color(0xFF47BA80),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Sign In Button
                SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {
                      context.goNamed('sign_up');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF47BA80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Or Sign in with
                const Center(
                  child: Text(
                    'Or Sign In with',
                    style: TextStyle(color: Color(0xFFADADAD)),
                  ),
                ),
                const SizedBox(height: 16),

                // Social Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialIcon('assets/icons/google.png'),
                    const SizedBox(width: 16),
                    socialIcon('assets/icons/facebook.png'),
                    const SizedBox(width: 16),
                    socialIcon('assets/icons/microsoft.png'),
                    const SizedBox(width: 16),
                    socialIcon('assets/icons/apple.png'),
                  ],
                ),

                const SizedBox(height: 32),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Color(0xFFADADAD),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF47BA80),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                const Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'Powered by ',
                      style: TextStyle(
                        color: Color(0xFFADADAD),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: 'M360 ICT',
                          style: TextStyle(
                            color: Color(0xFF47BA80),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget socialIcon(String assetPath) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 24,
        child: Image.asset(assetPath, height: 26, width: 26),
      ),
    );
  }
}

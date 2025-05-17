import 'package:ethio_commerce_app/widgets/continue_with.dart';
import 'package:ethio_commerce_app/widgets/login_button.dart';
import 'package:ethio_commerce_app/widgets/pattern_logo.dart';
import 'package:ethio_commerce_app/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PatternLogo(),
          Positioned(
            bottom: 130,
            left: 20,
            right: 20,
            child: Column(
              children: [
                const Text(
                  'Login To Your Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 20),
                const SignInForm(),
                const SizedBox(height: 15),
                const Text(
                  'Or Continue With',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 15),
                const ContinueWith(),
                const SizedBox(height: 20),
                Text(
                  'Forgot Your Password?',
                  style: TextStyle(
                    color: Colors.green.shade300,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          const LoginButton(),
        ],
      ),
    );
  }
}

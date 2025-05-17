import 'package:flutter/material.dart';
import 'package:ethio_commerce_app/widgets/pattern.dart';

class SignupSuccessScreen extends StatefulWidget {
  const SignupSuccessScreen({super.key});

  @override
  State<SignupSuccessScreen> createState() => _SignupSuccessScreenState();
}

class _SignupSuccessScreenState extends State<SignupSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Pattern(),
          Positioned(
            top: 200,
            left: 35,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset('../../assets/images/success.png'),
                  const SizedBox(height: 25),
                  Image.asset('../../assets/images/OrderCompleted.png'),
                  const SizedBox(height: 15),
                  const Text(
                    'Your Profile Is Ready To Use',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 100,
            right: 100,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 126, 202, 130),
                  minimumSize: const Size(157, 57),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  )),
              child: const Text(
                'Try Order',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:ethio_commerce_app/widgets/next_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({super.key});

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              '../../assets/images/Illustration.png',
              width: 408.5,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Find you Comfort',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF09051C),
            ),
          ),
          const Text(
            'Food here',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Here You Can find a chef or dish',
            style: TextStyle(fontSize: 12),
          ),
          const Text(
            'for every taste and color. Enjoy!',
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(
            height: 45,
          ),
         
 const NextButton(),
        ],
      ),
    );
  }
}

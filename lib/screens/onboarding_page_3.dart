import 'package:ethio_commerce_app/widgets/next_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage3 extends StatefulWidget {
  const OnboardingPage3({super.key});

  @override
  State<OnboardingPage3> createState() => _OnboardingPage3State();
}

class _OnboardingPage3State extends State<OnboardingPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset(
            '../../assets/images/illustration1.png',
            width: 408.5,
          ),
        ),
        const SizedBox(height: 30),
        const SizedBox(
          width: 260,
          child: Text(
            textAlign: TextAlign.center,
            'Food Ninja is Where Your Comfort Food Lives',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF09051C),
            ),
          ),
        ),
        const SizedBox(height: 40),
        const SizedBox(
          width: 260,
          child: Text(
            textAlign: TextAlign.center,
            'Enjoy a fast and smooth food delivery at your doorstep',
            style: TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(height: 50),
       
 const NextButton(),
            
      ],
    ),);
  }
}

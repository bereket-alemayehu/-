import 'package:flutter/material.dart';
import 'package:ethio_commerce_app/widgets/pattern.dart';

class PatternLogo extends StatelessWidget {
  const PatternLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Pattern(),
        Positioned(
          top: 10,
          left: 30,
          right: 30,
          child: Column(
            children: [
              Image.asset('../../assets/images/Logo.png'),
              Text(
                'FoodNinja',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.green.shade300,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                'Deliver Favorite Food',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF09051C),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

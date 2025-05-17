import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset('../../assets/images/success.png'),
            const SizedBox(height: 25),
            Image.asset('../../assets/images/OrderCompleted.png'),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ethio_commerce_app/widgets/pattern.dart';

class ResetSuccess extends StatelessWidget {
  const ResetSuccess({super.key});
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
                    'Password reset Successfully',
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
          Positioned(
            bottom: 40,
            left: 100,
            right: 100,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.green.shade300,
                minimumSize: const Size(157, 57),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

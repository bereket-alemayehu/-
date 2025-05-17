import 'package:flutter/material.dart';

class ContinueWith extends StatefulWidget {
  const ContinueWith({super.key});

  @override
  State<ContinueWith> createState() => _ContinueWithState();
}

class _ContinueWithState extends State<ContinueWith> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            minimumSize: const Size(147, 57),
          ),
          child: Row(
            children: [
              Image.asset('../../assets/images/facebook.png'),
              const SizedBox(width: 10),
              const Text(
                'Facebook',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            minimumSize: const Size(147, 57),
          ),
          child: Row(
            children: [
              Image.asset('../../assets/images/google.png'),
              const SizedBox(width: 10),
              const Text(
                'Google',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

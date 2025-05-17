import 'package:ethio_commerce_app/widgets/back_arrow.dart';
import 'package:ethio_commerce_app/widgets/bio_form.dart';
import 'package:ethio_commerce_app/widgets/next_button.dart';
import 'package:ethio_commerce_app/widgets/pattern2.dart';
import 'package:flutter/material.dart';

class SignUpProcess extends StatefulWidget {
  const SignUpProcess({super.key});

  @override
  State<SignUpProcess> createState() => _SignUpProcessState();
}

class _SignUpProcessState extends State<SignUpProcess> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: const BackArrow(),
            ), // appbar
            body: const Column(
              children: [
                SizedBox(height: 25),
                Text(
                  'Fill in your bio to get started',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  'This data will be displayed in your account profile for security',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 15),

                BioForm(), //form
              ],
            ), // Column
          ),
        ),
        const NextButton(),
        const Pattern2()
      ],
    );
  }
}

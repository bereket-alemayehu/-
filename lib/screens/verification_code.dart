import 'package:ethio_commerce_app/widgets/back_arrow.dart';
import 'package:ethio_commerce_app/widgets/next_button.dart';
import 'package:ethio_commerce_app/widgets/pattern2.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: const BackArrow(),
              backgroundColor: Colors.white,
            ),
            body: Column(
              children: [
                const SizedBox(height: 14),
                const Text(
                  'Enter 4-digit Verification code',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Code sent to +251 91 234 5678.This code will expired in 01:30',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(232, 243, 239, 239),
                          spreadRadius: 0,
                          blurRadius: 15,
                          offset: Offset(0, 10),
                        )
                      ]),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0, left: 8.0, right: 8.0),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (value) {},
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        activeColor: Colors.white,
                        selectedColor: Colors.black,
                        inactiveColor: Colors.white,
                        borderWidth: 2,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const Pattern2(),
        const NextButton(),
      ],
    );
  }
}

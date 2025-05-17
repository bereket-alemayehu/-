import 'package:ethio_commerce_app/widgets/back_arrow.dart';
import 'package:ethio_commerce_app/widgets/next_button.dart';
import 'package:ethio_commerce_app/widgets/pattern2.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});
  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                const Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'This data will be displayed in your account profile for security',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(205, 243, 239, 239),
                        spreadRadius: 0,
                        blurRadius: 15,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      side: const BorderSide(
                        color: Color.fromARGB(207, 255, 255, 255),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        '../../assets/images/Paypal.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(205, 243, 239, 239),
                        spreadRadius: 0,
                        blurRadius: 15,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      side: const BorderSide(
                        color: Color.fromARGB(207, 255, 255, 255),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        '../../assets/images/Visa.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(205, 243, 239, 239),
                        spreadRadius: 0,
                        blurRadius: 15,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      side: const BorderSide(
                        color: Color.fromARGB(207, 255, 255, 255),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        '../../assets/images/Payoneer.png',
                      ),
                    ),
                  ),
                ),
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

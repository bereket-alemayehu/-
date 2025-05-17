import 'package:ethio_commerce_app/widgets/back_arrow.dart';
import 'package:ethio_commerce_app/widgets/next_button.dart';
import 'package:ethio_commerce_app/widgets/pattern2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: const BackArrow(),
            backgroundColor: Colors.white,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const Text(
                'Forgot password?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'Select which contact details should we use to reset your password',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          const BoxShadow(
                            color: Color.fromARGB(255, 210, 205, 205),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(0, 10),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset('../../assets/images/chat.svg',
                                width: 24, height: 24, color: Colors.green),
                            const SizedBox(width: 10),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Via sms:'),
                                SizedBox(height: 5),
                                Text(
                                  '**** **** 111',
                                  style: TextStyle(
                                    fontFamily: 'sans-serif',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          const BoxShadow(
                            color: Color.fromARGB(255, 210, 205, 205),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(0, 10),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset('../../assets/images/envelope.svg',
                                width: 24, height: 24, color: Colors.green),
                            const SizedBox(width: 10),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Via email:'),
                                SizedBox(height: 5),
                                Text(
                                  ' ****   **** @gmail.com',
                                  style: TextStyle(
                                    fontFamily: 'sans-serif',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      const Pattern2(),
      const NextButton(),
    ]);
  }
}

import 'package:ethio_commerce_app/widgets/back_arrow.dart';
import 'package:ethio_commerce_app/widgets/next_button.dart';
import 'package:ethio_commerce_app/widgets/pattern2.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;
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
                const Text(
                  'Reset your password here',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(223, 241, 240, 240),
                              spreadRadius: 10,
                              blurRadius: 15,
                              offset: Offset(8, 6),
                            )
                          ],
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'New Password',
                            contentPadding: const EdgeInsets.only(left: 16),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword1
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: _obscurePassword1
                                    ? Colors.grey
                                    : Colors.green,
                              ),
                              onPressed: () {
                                setState(
                                  () {
                                    _obscurePassword1 = !_obscurePassword1;
                                  },
                                );
                              },
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(223, 241, 240, 240),
                              spreadRadius: 10,
                              blurRadius: 15,
                              offset: Offset(8, 2),
                            )
                          ],
                        ),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 16),
                            labelText: 'Confirm Password',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(_obscurePassword2
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              color: _obscurePassword2
                                  ? Colors.grey
                                  : Colors.green,
                              onPressed: () {
                                setState(
                                  () {
                                    _obscurePassword2 = !_obscurePassword2;
                                  },
                                );
                              },
                            ),
                          ),
                          validator: (value) {
                            if (value != passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const NextButton(),
        const Pattern2(),
      ],
    );
  }
}

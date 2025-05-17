import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //Name
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 210, 205, 205)
                      .withValues(alpha: 0.3),
                  offset: const Offset(0, 0),
                  blurRadius: 12,
                  spreadRadius: 5,
                )
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                labelText: 'Bereket',
                labelStyle: const TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          ), // Name
          const SizedBox(height: 10),
          //Email
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 210, 205, 205)
                      .withValues(alpha: 0.4),
                  offset: const Offset(0, 0),
                  blurRadius: 12,
                  spreadRadius: 5,
                )
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'beki@gmail.com',
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.green.shade300,
                ),
                prefixIconColor: const Color.fromARGB(255, 255, 249, 249),
                labelStyle: const TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
          ), // Email

          const SizedBox(height: 10),
          //password
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 210, 205, 205)
                      .withValues(alpha: 0.3),
                  offset: const Offset(0, 0),
                  blurRadius: 12,
                  spreadRadius: 5,
                )
              ],
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'beki123***',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.green.shade300,
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  icon: const Icon(
                    Icons.visibility_outlined,
                  ),
                ),
                labelStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
          ), // password
        ],
      ),
    ); //form
  }
}

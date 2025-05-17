import 'package:flutter/material.dart';

class BioForm extends StatelessWidget {
  const BioForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(206, 227, 225, 225)
                      .withValues(alpha: 0.2),
                  offset: const Offset(0, 0),
                  blurRadius: 12,
                  spreadRadius: 10,
                )
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(206, 227, 225, 225)
                      .withValues(alpha: 0.2),
                  offset: const Offset(0, 0),
                  blurRadius: 12,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(206, 227, 225, 225)
                      .withValues(alpha: 0.2),
                  offset: const Offset(0, 0),
                  blurRadius: 12,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

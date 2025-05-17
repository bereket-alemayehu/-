import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: const Color.fromARGB(81, 231, 190, 196),
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Color.fromARGB(255, 210, 101, 17),
          ),
        ),
      );
  }
}

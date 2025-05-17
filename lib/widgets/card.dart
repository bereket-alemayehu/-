import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String url;
  final String title;
  final String time;
  const Card1({
    super.key,
    required this.url,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          const BoxShadow(
            color: Color.fromARGB(198, 244, 239, 239),
            spreadRadius: 3,
            blurRadius: 15,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              url,
              width: 100,
              height: 100,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

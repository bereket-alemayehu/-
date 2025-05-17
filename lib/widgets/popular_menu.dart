import 'package:flutter/material.dart';

class PopularMenu extends StatelessWidget {
  final String url;
  final String title;
  final String price;
  final String subtitle;
  const PopularMenu({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            offset: const Offset(10, 10),
            blurRadius: 15,
            spreadRadius: 5,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                url,
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 50),
          Text(
            '\$$price',
            style: const TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 250, 173, 6),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

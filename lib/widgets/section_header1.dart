import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Your ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Favorite Food',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          icon: SvgPicture.asset(
            'assets/images/notification.svg',
            width: 30,
            height: 30,
            color: Colors.green,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

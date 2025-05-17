import 'package:flutter/material.dart';

class SectionTitleRow extends StatefulWidget {
  const SectionTitleRow(
      {super.key, required this.title, required this.onViewMore});
  final String title;
  final void Function() onViewMore;

  @override
  State<SectionTitleRow> createState() => _SectionTitleRowState();
}

class _SectionTitleRowState extends State<SectionTitleRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: widget.onViewMore,
          child: const Text(
            'View More',
            style: TextStyle(
              color: Color.fromARGB(255, 238, 159, 159),
            ),
          ),
        )
      ],
    );
  }
}

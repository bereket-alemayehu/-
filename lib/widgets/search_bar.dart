import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar1 extends StatefulWidget {
  const SearchBar1({super.key});

  @override
  State<SearchBar1> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(145, 248, 217, 204),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(238, 235, 179, 159),
                  ),
                  labelText: 'What do you want  to order?',
                  labelStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 238, 159, 159),
                  ),
                  border: InputBorder.none),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 60,
          height: 54,
          decoration: BoxDecoration(
            color: const Color.fromARGB(145, 248, 217, 204),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.only(left: 6),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '../../assets/images/equalizer.svg',
              width: 40,
              height: 40,
              color: const Color.fromARGB(255, 238, 159, 159),
            ),
          ),
        )
      ],
    );
  }
}

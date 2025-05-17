import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white.withValues(alpha: 0.0), Colors.white],
                  stops: const <double>[0.7, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstOut,
              child: Image.asset('../../assets/images/Pattern.png'),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('../../assets/images/Logo.png'),
                Text(
                  'FoodNinja',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.green.shade300,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'Deliver Favorite Food',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF09051C),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

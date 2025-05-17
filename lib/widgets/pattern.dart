import 'package:flutter/material.dart';

class Pattern extends StatelessWidget {
  const Pattern({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ShaderMask(
        shaderCallback: (bounds) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 225, 225, 225).withValues(alpha: 0.0),
              Colors.white,
            ],
            stops: const <double>[0.5, 1.0],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstOut,
        child: Image.asset(
          '../../assets/images/Pattern.png',
        ),
      ),
    );
  }
}

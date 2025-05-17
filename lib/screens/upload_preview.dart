import 'package:ethio_commerce_app/widgets/back_arrow.dart';
import 'package:ethio_commerce_app/widgets/next_button.dart';
import 'package:ethio_commerce_app/widgets/pattern2.dart';
import 'package:flutter/material.dart';

class UploadPreviewScreen extends StatelessWidget {
  const UploadPreviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: const BackArrow(),
              backgroundColor: Colors.white,
            ),
            body: Column(
              children: [
                const Text(
                  'Upload Your Photo Profile',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'This data will be displayed on your account profile for security.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        '../../assets/images/Photo.png',
                        width: double.infinity,
                        height: 300,
                      ),
                    ),
                    Positioned(
                      top: 48,
                      right: 48,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.4),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.close,
                            color: Color.fromARGB(186, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const NextButton(),
        const Pattern2(),
      ],
    );
  }
}

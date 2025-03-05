import 'package:flutter/material.dart';
import 'package:graduationproject/ui/Home/homeScreen.dart';
import 'package:splashify/splashify.dart';

class splashScreen extends StatelessWidget {
  static const routeName = '/';

  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splashify(
          imagePath: 'assets/images/sciLogo.jpg',
          // Ensure this path is correct
          title: 'Faculty of Science ASU',
          slideNavigation: true,
          titleColor: Colors.green.shade900,
          // Deeper green for aesthetics
          titleBold: true,
          titleFadeIn: true,
          imageFadeIn: true,
          imageSize: 200,
          // Moderate size for better scaling
          heightBetween: 20,
          glowIntensity: 20,
          navigateDuration: 5,
          colorizeTitleAnimation: true,
          colorizeTileAnimationColors: [
            Colors.white,
            Colors.green.shade900,
          ],
          child: homeScreen()),
    );
  }
}

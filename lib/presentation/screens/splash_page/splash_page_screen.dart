import 'package:flutter/material.dart';

class SplashPageScreen extends StatelessWidget {
  final Widget goToPage;

  const SplashPageScreen({super.key, required this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => goToPage,
          ));
    });

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background/splashscreenborroso.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/logo/logotaxi.png',
                  width: 150,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

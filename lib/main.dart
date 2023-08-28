import 'package:taxi_campeche_user/presentation/screens/login/login_screen.dart';
import 'package:taxi_campeche_user/presentation/screens/splash_page/splash_page_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Taxi Campeche',
      debugShowCheckedModeBanner: false,
      home: SplashPageScreen(goToPage: LoginScreen(),)
    );
  }
}

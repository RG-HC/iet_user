import 'package:Taxi_Campeche_User/presentation/screens/login/login_screen.dart';
import 'package:Taxi_Campeche_User/presentation/screens/splash_page/splash_page_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPageScreen(goToPage: LoginScreen(),)
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyecto_iet/presentation/screens/login/login_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _LoginScreen(),
    );
  }
}

class _LoginScreen extends StatelessWidget {
  const _LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background/loginscreen.png'),
          fit: BoxFit.cover
        )
      ),
      child: const LoginContainer(),
    );
  }
}

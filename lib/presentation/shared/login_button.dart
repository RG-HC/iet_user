import 'package:flutter/material.dart';

class LoginButtom extends StatelessWidget {
  const LoginButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return _ButtonLogin();
  }
}

class _ButtonLogin extends StatelessWidget {
  final styleButton = ElevatedButton.styleFrom(
      backgroundColor: Colors.pink,
      padding: const EdgeInsets.symmetric(vertical: 19),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));

  final textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold
  );

  _ButtonLogin();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () {},
        style: styleButton,
        child: Text('Iniciar Sesión',
          style: textStyle,
        ),
      ),
    );
  }
}

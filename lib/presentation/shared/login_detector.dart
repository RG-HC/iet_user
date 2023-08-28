import 'package:flutter/material.dart';


class LoginDetector extends StatelessWidget {

  final Color textColor;
  final String text;

  const LoginDetector({
    super.key,
    required this.textColor,
    required this.text});

  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle(
      color: textColor,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      fontSize: 20
    );

    return GestureDetector(
      onTap: () {}, // Escribir la lógica
      child: Text(text,
      style: textStyle
      ),
    );
  }
}

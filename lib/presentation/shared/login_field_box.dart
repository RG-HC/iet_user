import 'package:flutter/material.dart';

class LoginFielBox extends StatelessWidget {

  final String hintText;

  const LoginFielBox({
    super.key,
    required this.hintText
  });

  @override
  Widget build(BuildContext context) {

    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide( color: Colors.white),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
      hintStyle: TextStyle(color: Colors.white),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      fillColor: Colors.transparent,
      filled: true
    );

    return TextFormField(
      decoration: inputDecoration.copyWith(hintText: hintText),
      obscureText: hintText.toLowerCase() == 'contraseña', // Campo de contraseña oculto
      style: TextStyle(color: Colors.white),
    );
  }
}

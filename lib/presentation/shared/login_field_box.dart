import 'package:flutter/material.dart';

class LoginFielBox extends StatelessWidget {

  final String hintText;
  final ValueChanged<bool> onFocusChange;

  const LoginFielBox({
    super.key,
    required this.hintText, required this.onFocusChange
  });

  @override
  Widget build(BuildContext context) {

    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide( color: Colors.white),
      borderRadius: BorderRadius.circular(10) // Modificar los Bordes para hacerlos mas redondeado
    );

    final inputDecoration = InputDecoration(
      hintStyle: const TextStyle(color: Colors.white),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      fillColor: Colors.transparent,
      filled: true
    );

    return FocusScope(
      child: Focus(
        onFocusChange: (hasFocus) {
        onFocusChange(hasFocus);
      },
      child: TextFormField(
        decoration: inputDecoration.copyWith(hintText: hintText),
        obscureText: hintText.toLowerCase() == 'contraseña', // Campo de contraseña oculto
        style: const TextStyle(color: Colors.white),
      ),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyecto_iet/presentation/shared/login_field_box.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Image.asset(
            'assets/logo/logotaxi.png',
            width: 150,
          ),
          SizedBox(height: 20),
          LoginFielBox(hintText: 'Correo Eléctronico',),
          SizedBox(height: 20),
          LoginFielBox(hintText: 'Contraseña'),
        ],
      ),
    );
  }
}

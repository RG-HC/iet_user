import 'package:flutter/material.dart';
import 'package:proyecto_iet/presentation/shared/login_button.dart';
import 'package:proyecto_iet/presentation/shared/login_detector.dart';
import 'package:proyecto_iet/presentation/shared/login_field_box.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/logo/logotaxi.png',
                width: 150,
              ),
              const SizedBox(height: 70),

              const LoginFielBox(
                hintText: 'Correo Eléctronico',),

              const SizedBox(height: 20),

              const LoginFielBox(
                  hintText: 'Contraseña'),

              const SizedBox(height: 20,),

              const LoginButtom(),

              const SizedBox(height: 25),

              const LoginDetector(
                text: '¿Olvidaste tu contraseña?',
                textColor: Colors.white,
              ),

              const SizedBox(height: 10),

              const LoginDetector(
                text: 'Registarse',
                textColor: Colors.amber,
              ),
            ],
          ),
        ),
      ]
    );
  }
}

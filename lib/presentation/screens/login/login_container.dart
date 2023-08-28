import 'package:flutter/material.dart';
import '../../shared/login_button.dart';
import '../../shared/login_detector.dart';
import '../../shared/login_field_box.dart';


class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
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

              LoginFielBox(
                hintText: 'Correo Eléctronico',
                onFocusChange: (hasFocus) {
                  if (hasFocus) {
                    _scrollToEnd();
                  }
                },
              ),

              const SizedBox(height: 20),

              LoginFielBox(
                hintText: 'Contraseña',
                onFocusChange: (hasFocus) {
                  if (hasFocus) {
                    _scrollToEnd();
                  }
                },
              ),


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

  void _scrollToEnd() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

}

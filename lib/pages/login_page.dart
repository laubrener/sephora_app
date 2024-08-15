import 'package:flutter/material.dart';
import 'package:sephora_app/widgets/custom_input.dart';
import 'package:sephora_app/widgets/labels.dart';
import 'package:sephora_app/widgets/logo.dart';
import 'package:sephora_app/widgets/send_btn.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // const Background(),
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Logo(),
                    _Form(),
                    Labels(
                      route: 'register',
                      text: '¿No tenés cuenta?',
                      link: 'Crea una cuenta ahora',
                    ),
                    Text(
                      'Términos y condiciones de uso',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({super.key});

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            isPassword: true,
            placeholder: 'Contraseña',
            textController: passwordCtrl,
          ),
          SendBtn(
            text: 'Entrar',
            onPressed: () {
              print(
                  'email: ${emailCtrl.text}, contraseña: ${passwordCtrl.text}');
              Navigator.pushReplacementNamed(context, 'main');
            },
          )
        ],
      ),
    );
  }
}

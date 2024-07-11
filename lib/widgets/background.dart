import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/fondo.png'),
      ),
    );
  }
}

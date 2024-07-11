import 'package:flutter/material.dart';
import 'package:sephora_app/widgets/background.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/fondo_labial.png'),
            ),
          ),
          Center(
            child: CircularProgressIndicator(
              color: Color(int.parse('0xffD93930')),
            ),
          )
        ],
      ),
    );
  }
}

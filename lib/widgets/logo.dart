import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 50),
      width: 200,
      child: const Column(
        children: [
          Image(
            image: AssetImage('assets/images/logo_app.png'),
          ),
          Text('Sign in', style: TextStyle(fontSize: 30))
        ],
      ),
    ));
  }
}

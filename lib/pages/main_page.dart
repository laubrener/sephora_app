import 'package:flutter/material.dart';
import 'package:sephora_app/widgets/background.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Background(),
      ),
    );
  }
}

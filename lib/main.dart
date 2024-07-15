import 'package:flutter/material.dart';
import 'package:sephora_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sephora app',
      initialRoute: 'main',
      routes: appRoutes,
    );
  }
}

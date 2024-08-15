import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora_app/providers/categories_provider.dart';
import 'package:sephora_app/providers/products_provider.dart';
import 'package:sephora_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoriesProvider()),
        ChangeNotifierProvider(create: (_) => ProductsProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sephora app',
        initialRoute: 'main',
        routes: appRoutes,
      ),
    );
  }
}

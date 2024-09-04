import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora_app/providers/brands_provider.dart';
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
        ChangeNotifierProvider(create: (_) => BrandsProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sephora app',
          initialRoute: 'main',
          routes: appRoutes,
          theme: ThemeData.light().copyWith(
              appBarTheme: const AppBarTheme(color: Colors.black),
              expansionTileTheme: ExpansionTileThemeData(
                  shape: Border.all(color: Colors.transparent)))),
    );
  }
}

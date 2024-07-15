import 'package:flutter/material.dart';
import 'package:sephora_app/pages/category_page.dart';
import 'package:sephora_app/pages/loading_page.dart';
import 'package:sephora_app/pages/login_page.dart';
import 'package:sephora_app/pages/main_page.dart';
import 'package:sephora_app/pages/sign_up_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'loading': (_) => const LoadingPage(),
  'register': (_) => const SignUpPage(),
  'login': (_) => const LoginPage(),
  'main': (_) => const MainPage(),
  'category': (_) => const CategoryPage(),
};

import 'package:flutter/material.dart';
import 'package:sephora_app/models/products_model.dart';
import 'package:sephora_app/pages/brandsList_page.dart';
import 'package:sephora_app/pages/category_page.dart';
import 'package:sephora_app/pages/details_page.dart';
import 'package:sephora_app/pages/home_page.dart';
import 'package:sephora_app/pages/loading_page.dart';
import 'package:sephora_app/pages/login_page.dart';
import 'package:sephora_app/pages/main_page.dart';
import 'package:sephora_app/pages/shop_page.dart';
import 'package:sephora_app/pages/sign_up_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'loading': (_) => const LoadingPage(),
  'register': (_) => const SignUpPage(),
  'login': (_) => const LoginPage(),
  'main': (_) => const MainPage(),
  'category': (_) => const CategoryPage(),
};

final pageRoutes = [
  Route(titulo: 'Categories', page: const ShopPage()),
  Route(
      titulo: 'Shop',
      page: const HomePage(
        catId: 'cat2110030',
        name: 'MINI SIZE',
      )),
  Route(titulo: 'Brands', page: const BrandsListPage()),
  Route(
      titulo: 'Detail',
      page: DetailsPage(
        product: Product(
          productId: 'P442513',
          currentSku: CurrentSkuList(skuId: '2176071'),
        ),
      )),
];

class Route {
  final String titulo;
  final Widget page;

  Route({required this.titulo, required this.page});
}

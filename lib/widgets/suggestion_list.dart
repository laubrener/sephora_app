import 'package:flutter/material.dart';
import 'package:sephora_app/pages/home_page.dart';

import '../models/products_model.dart';

class SuggestionList extends StatelessWidget {
  final List<Product> list;
  const SuggestionList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (context, index) => CardWidget(product: list[index]),
    );
  }
}

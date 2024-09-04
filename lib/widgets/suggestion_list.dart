import 'package:flutter/material.dart';
import 'package:sephora_app/pages/home_page.dart';

import '../models/product_model.dart';

class SuggestionList extends StatelessWidget {
  final List<AncillarySkus> list;
  const SuggestionList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.only(
                left: 7.5, right: 7.5, bottom: 15, top: 15),
            width: 200,
            child: CardWidget(
              image: 'https://www.sephora.com${list[index].image}',
              brand: list[index].brandName ?? '',
              name: list[index].productName ?? '',
              price: list[index].listPrice ?? '',
            )),
      ),
    );
  }
}

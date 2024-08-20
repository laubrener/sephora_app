import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:sephora_app/models/products_model.dart';
import 'package:http/http.dart' as http;

import '../auth/secrets.dart';
import 'categories_provider.dart';

class ProductsProvider extends ChangeNotifier {
  List<Product> productsList = [];

  Future<List<Product>?> getProducts(String catId) async {
    Uri url = Uri.parse(
        '$path/us/products/v2/list?pageSize=60&currentPage=1&categoryId=$catId');
    final resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });

    ProductsModel products =
        ProductsModel.fromRawJson(utf8.decode(resp.bodyBytes));
    productsList = products.products ?? [];

    return productsList;
  }
}

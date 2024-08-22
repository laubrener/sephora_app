import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sephora_app/models/product_model.dart';

import 'package:sephora_app/models/products_model.dart';
import 'package:http/http.dart' as http;

import '../auth/secrets.dart';
import 'categories_provider.dart';

class ProductsProvider extends ChangeNotifier {
  List<Product> _productsList = [];
  ProductModel _product = ProductModel();
  bool _isLoading = true;

  List<Product> get productsList => _productsList;
  set productsList(List<Product> value) {
    _productsList = value;
    notifyListeners();
  }

  ProductModel get product => _product;
  set product(ProductModel value) {
    _product = value;
    notifyListeners();
  }

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<List<Product>?> getProducts(String catId) async {
    Uri url = Uri.parse(
        '$path/us/products/v2/list?pageSize=60&currentPage=1&categoryId=$catId');
    final resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });

    ProductsModel products =
        ProductsModel.fromRawJson(utf8.decode(resp.bodyBytes));
    _productsList = products.products ?? [];

    return _productsList;
  }

  Future<ProductModel> getProductDetail(String prodId, String skuId) async {
    Uri url = Uri.parse(
        '$path/us/products/v2/detail?productId=$prodId&preferedSku=$skuId');
    final resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });

    ProductModel respProduct =
        ProductModel.fromRawJson(utf8.decode(resp.bodyBytes));
    product = respProduct;

    return product;
  }
}

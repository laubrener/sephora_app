import 'package:flutter/material.dart';
import 'package:sephora_app/models/product_model.dart';

import 'package:sephora_app/models/products_model.dart';
import 'package:sephora_app/services/product_service.dart';

class ProductsProvider extends ChangeNotifier {
  List<Product> productsList = [];
  ProductModel product = ProductModel();
  ProductsService service = ProductsService();
  bool _isLoading = true;

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<List<Product>> getProducts(String catId) async {
    productsList = await service.getProducts(catId);
    _isLoading = false;
    notifyListeners();
    return productsList;
  }

  Future<ProductModel> getProductDetail(String prodId, String skuId) async {
    _isLoading = true;

    product = await service.getProductDetail(prodId, skuId);
    _isLoading = false;
    notifyListeners();
    return product;
  }
}

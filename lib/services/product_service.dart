import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:sephora_app/models/product_model.dart';
import 'package:sephora_app/models/products_model.dart';
import 'package:sephora_app/providers/categories_provider.dart';

import '../auth/secrets.dart';

class ProductsService {
  List<Product> productsList = [];
  ProductModel product = ProductModel();

  Future<List<Product>> getProducts(String catId) async {
    Uri url = Uri.parse(
        '$path/us/products/v2/list?pageSize=60&currentPage=1&categoryId=$catId');
    Response resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });

    ProductsModel products =
        ProductsModel.fromRawJson(utf8.decode(resp.bodyBytes));
    productsList = products.products ?? [];

    return productsList;
  }

  Future<ProductModel> getProductDetail(String prodId, String skuId) async {
    print('prodId: $prodId, skuId: $skuId');
    Uri url = Uri.parse(
        '$path/us/products/v2/detail?productId=$prodId&preferedSku=$skuId');
    Response resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });
    ProductModel respProduct =
        ProductModel.fromRawJson(utf8.decode(resp.bodyBytes));
    product = respProduct;
    return product;
  }
}

import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:sephora_app/models/categories_model.dart';
import 'package:sephora_app/models/category_model.dart';

import '../auth/secrets.dart';

class CategoriesService {
  List<RootCategory> _categoriesList = [];
  List<ChildCategory> _subcategoriesList = [];

  Future<List<RootCategory>> getCategories() async {
    Uri url = Uri.parse('$path/categories/v2/list-root');
    Response resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });
    final categories = CategoriesModel.fromRawJson(utf8.decode(resp.bodyBytes));
    _categoriesList = categories.rootCategories ?? [];
    return _categoriesList;
  }

  Future<List<ChildCategory>> getSubcategories(String catId) async {
    Uri url = Uri.parse('$path/categories/list?categoryId=$catId');
    Response resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });
    final subcategories = CatModel.fromRawJson(utf8.decode(resp.bodyBytes));
    _subcategoriesList = subcategories.childCategories ?? [];
    return _subcategoriesList;
  }
}

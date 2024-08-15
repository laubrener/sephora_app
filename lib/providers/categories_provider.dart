import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sephora_app/auth/secrets.dart';
import 'package:sephora_app/models/categories_model.dart';
import 'package:sephora_app/models/category_model.dart';

const String path = 'https://sephora.p.rapidapi.com';

class CategoriesProvider extends ChangeNotifier {
  List<RootCategory> categoriesList = [];
  List<ChildCategory>? subcategoriesList = [];

  Future<List<RootCategory>?> getCategories() async {
    Uri url = Uri.parse('$path/categories/v2/list-root');
    final resp = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'x-rapidapi-key': apiKey
    });
    final categories = CategoriesModel.fromRawJson(resp.body);
    categoriesList = categories.rootCategories ?? [];

    return categoriesList;
  }

  Future<List<ChildCategory>?> getSubcategories(String catId) async {
    Uri url = Uri.parse('$path/categories/list?categoryId=$catId');
    final resp = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'x-rapidapi-key': apiKey
    });
    final subcategories = CatModel.fromRawJson(resp.body);
    subcategoriesList = subcategories.childCategories ?? [];

    return subcategoriesList;
  }
}

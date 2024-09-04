import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sephora_app/auth/secrets.dart';
import 'package:sephora_app/models/categories_model.dart';
import 'package:sephora_app/models/category_model.dart';

const String path = 'https://sephora.p.rapidapi.com';

class CategoriesProvider extends ChangeNotifier {
  List<RootCategory> _categoriesList = [];
  List<ChildCategory> _subcategoriesList = [];
  bool _isLoading = true;

  List<RootCategory> get categoriesList => _categoriesList;
  set categoriesList(List<RootCategory> value) {
    _categoriesList = value;
    notifyListeners();
  }

  List<ChildCategory> get subcategoriesList => _subcategoriesList;
  set subcategoriesList(List<ChildCategory> value) {
    _subcategoriesList = value;
    notifyListeners();
  }

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<List<RootCategory>?> getCategories() async {
    Uri url = Uri.parse('$path/categories/v2/list-root');
    final resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });
    final categories = CategoriesModel.fromRawJson(resp.body);
    _categoriesList = categories.rootCategories ?? [];
    _isLoading = false;
    return _categoriesList;
  }

  Future<List<ChildCategory>?> getSubcategories(String catId) async {
    _isLoading = true;
    Uri url = Uri.parse('$path/categories/list?categoryId=$catId');
    final resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });
    final subcategories = CatModel.fromRawJson(resp.body);
    _subcategoriesList = subcategories.childCategories ?? [];
    _isLoading = false;
    return _subcategoriesList;
  }
}

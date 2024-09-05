import 'package:flutter/material.dart';
import 'package:sephora_app/models/categories_model.dart';
import 'package:sephora_app/models/category_model.dart';
import 'package:sephora_app/services/categories_service.dart';

class CategoriesProvider extends ChangeNotifier {
  List<RootCategory> categoriesList = [];
  List<ChildCategory> subcategoriesList = [];
  CategoriesService service = CategoriesService();
  bool _isLoading = true;

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<List<RootCategory>> getCategories() async {
    categoriesList = await service.getCategories();
    _isLoading = false;
    notifyListeners();
    return categoriesList;
  }

  Future<List<ChildCategory>> getSubcategories(String catId) async {
    subcategoriesList = await service.getSubcategories(catId);
    _isLoading = false;
    notifyListeners();
    return subcategoriesList;
  }
}

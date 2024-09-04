import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sephora_app/auth/secrets.dart';
import 'package:sephora_app/models/brands_model.dart';
import 'package:sephora_app/providers/categories_provider.dart';

class BrandsProvider extends ChangeNotifier {
  List<Brand> _brandsList = [];

  bool _isLoading = true;

  List<Brand> get brandsList => _brandsList;
  set brandsList(List<Brand> value) {
    _brandsList = value;
    notifyListeners();
  }

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<List<Brand>?> getBrands() async {
    Uri url = Uri.parse('$path/brands/v2/list');
    final resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });
    final brands = BrandsModel.fromRawJson(resp.body);
    _brandsList = brands.data ?? [];
    _isLoading = false;
    return _brandsList;
  }
}

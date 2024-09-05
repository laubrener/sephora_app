import 'package:flutter/material.dart';
import 'package:sephora_app/models/brands_model.dart';
import 'package:sephora_app/services/brands_service.dart';

class BrandsProvider extends ChangeNotifier {
  List<Brand> brandsList = [];
  BrandsService service = BrandsService();

  bool _isLoading = true;

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<List<Brand>> getBrands() async {
    brandsList = await service.getBrands();
    _isLoading = false;
    notifyListeners();
    return brandsList;
  }
}

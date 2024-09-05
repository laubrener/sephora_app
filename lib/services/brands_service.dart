import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:sephora_app/models/brands_model.dart';

import '../auth/secrets.dart';

class BrandsService {
  List<Brand> brandsList = [];

  Future<List<Brand>> getBrands() async {
    Uri url = Uri.parse('$path/brands/v2/list');
    Response resp = await http.get(url, headers: {
      'Content-Type': 'application/json;charset=UTF-8',
      'x-rapidapi-key': apiKey
    });
    final brands = BrandsModel.fromRawJson(utf8.decode(resp.bodyBytes));
    brandsList = brands.data ?? [];

    return brandsList;
  }
}

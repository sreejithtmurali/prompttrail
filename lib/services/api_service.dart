
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product_model.dart';

class ApiService {
  Future<List<ProductModel>> getProducts() async {
    final url = Uri.parse(
      'https://dummyjson.com/products?limit=0',
    );

    final response = await http.get(url).timeout(
      const Duration(seconds: 15),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List products = data['products'];

      return products
          .map((item) => ProductModel.fromJson(item))
          .toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}

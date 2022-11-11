import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:imelda_shoes_online_store/models/customer.dart';
import '../models/product.dart';

class ImeldaShoesApi {
  String api = 'http://127.0.0.1:5000';

  // get all products
  Future<List<ProductModel>> getAllProducts() async {
    List<ProductModel> results = [];
    final response =
    await http.get(Uri.parse('$api/product'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    print('Status code getAllProducts: ${response.statusCode}');

    if (response.statusCode == 200) {
      final list = json.decode(response.body) as List<dynamic>;
      results =
          list.map((json) => ProductModel.fromJson(json)).toList();
      return results;
    } else {
      throw Exception('Failed to load API');
    }
  }

  // get all customers
  Future<List<CustomerModel>> getAllCustomers() async {
    List<CustomerModel> results = [];
    final response =
    await http.get(Uri.parse('$api/customer'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    print('Status code getAllCustomers: ${response.statusCode}');
    if (response.statusCode == 200) {
      final list = json.decode(response.body) as List<dynamic>;
      results =
          list.map((json) => CustomerModel.fromJson(json)).toList();
      return results;
    } else {
      throw Exception('Failed to load API');
    }
  }
}
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/data_class.dart';

class ApiManager {
  Future<http.Response> fetchdata() async {
    final response = await http.get(Uri.parse("https://dummyjson.com/products"));

    return response;
  }
}

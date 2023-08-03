// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:connectivity/connectivity.dart';

import '../model/data_class.dart';
import '../services/api_manager.dart';

class DataProvider extends ChangeNotifier {
  List<Data> alldata = [];

  Future<dynamic> getData(BuildContext context) async {
    try {
      final response = await ApiManager().fetchdata();
      alldata.clear();
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['products'] is List) {
          var list = data['products'] as List;
          for (var element in list) {
            alldata.add(Data.fromJson(element));
          }
        }
        notifyListeners();
      } else if (response.statusCode == 404) {
        alldata.clear();
        showSnackbar(context, "The link is broken");
        notifyListeners();
      }
    } catch (e) {
      alldata.clear();
      showSnackbar(context, "No Internet Connection");
      notifyListeners();
    }

    notifyListeners();
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Dismiss',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            notifyListeners();
          },
        ),
      ),
    );
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_8_2_2023/provider/data_provider.dart';
import 'package:flutter_application_8_2_2023/screen/home/view/home_page_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<DataProvider>(
      create: (_) => DataProvider(),
    ),
  ], child: const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage())));
}

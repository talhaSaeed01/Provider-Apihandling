import 'package:flutter/material.dart';
import 'package:flutter_application_8_2_2023/screen/home/widget/appbar_home.dart';
import 'package:flutter_application_8_2_2023/screen/home/widget/home_tabbar.dart';
import 'package:flutter_application_8_2_2023/screen/home/widget/home_title_data_.dart';
import 'package:flutter_application_8_2_2023/utils/appcolor.dart';
import 'package:provider/provider.dart';

import '../../../provider/data_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    Provider.of<DataProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Appcolor.darkblue,
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const AppbarHome(),
                ListView(
                  shrinkWrap: true,
                  children: const [
                    HomeTitleData(),
                    HomeTabbar(),
                  ],
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                final provider = Provider.of<DataProvider>(context, listen: false);
                provider.getData(context);
              },
              backgroundColor: Appcolor.blue,
              elevation: 15,
              child: const Icon(Icons.add)),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}

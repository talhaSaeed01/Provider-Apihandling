import 'package:flutter/material.dart';
import 'package:flutter_application_8_2_2023/screen/home/view/board_tab_view.dart';
import 'package:flutter_application_8_2_2023/screen/home/view/task_tab_screen.dart';
import 'package:flutter_application_8_2_2023/utils/appcolor.dart';
import 'package:flutter_application_8_2_2023/utils/appstrings.dart';
import 'package:flutter_application_8_2_2023/widget/custom_text.dart';

class HomeTabbar extends StatefulWidget {
  const HomeTabbar({super.key});

  @override
  State<HomeTabbar> createState() => _HomeTabbarState();
}

class _HomeTabbarState extends State<HomeTabbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TabBar(
            physics: BouncingScrollPhysics(),
            isScrollable: true,
            indicatorColor: Appcolor.white,
            padding: const EdgeInsets.symmetric(vertical: 10),
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.04,
                            decoration: BoxDecoration(color: Appcolor.white, borderRadius: BorderRadius.circular(20)),
                            child: Center(child: CustomText(text: Appstrings.hometasknoti, color: Appcolor.black, size: 20, maxline: 1, fontWeight: FontWeight.w700)))),
                    const SizedBox(height: 10),
                    CustomText(text: Appstrings.hometask, color: Appcolor.blue, size: 32, maxline: 1, fontWeight: FontWeight.w700),
                  ],
                ),
              ),
              Tab(
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.04,
                          decoration: BoxDecoration(color: Appcolor.white, borderRadius: BorderRadius.circular(20)),
                          child: Center(child: CustomText(text: Appstrings.homeboardsnoti, color: Appcolor.black, size: 20, maxline: 1, fontWeight: FontWeight.w700)))),
                  const SizedBox(height: 10),
                  CustomText(text: Appstrings.homeboard, color: Appcolor.blue, size: 32, maxline: 1, fontWeight: FontWeight.w700),
                ])
              ])),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.46, child: TabBarView(physics: NeverScrollableScrollPhysics(), children: [TaskTabView(), BoardTabView()]))
        ],
      ),
    );
  }
}

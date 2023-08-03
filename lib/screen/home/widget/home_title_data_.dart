import 'package:flutter/material.dart';
import 'package:flutter_application_8_2_2023/utils/appcolor.dart';
import 'package:flutter_application_8_2_2023/utils/appstrings.dart';
import 'package:flutter_application_8_2_2023/widget/custom_text.dart';

class HomeTitleData extends StatefulWidget {
  const HomeTitleData({super.key});
  @override
  State<HomeTitleData> createState() => _HomeTitleDataState();
}

class _HomeTitleDataState extends State<HomeTitleData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: Appstrings.hometitle, color: Appcolor.blue, size: 50, maxline: 2, fontWeight: FontWeight.bold),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: Appstrings.homeday, color: Appcolor.white, size: 18, maxline: 1, fontWeight: FontWeight.bold),
              CustomText(text: Appstrings.homepercentage, color: Appcolor.white, size: 18, maxline: 1, fontWeight: FontWeight.bold),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: Appstrings.homedate, color: Appcolor.grey, size: 16, maxline: 1, fontWeight: FontWeight.bold),
              CustomText(text: Appstrings.homecompleted, color: Appcolor.grey, size: 16, maxline: 1, fontWeight: FontWeight.bold),
            ],
          ),
        ],
      ),
    );
  }
}

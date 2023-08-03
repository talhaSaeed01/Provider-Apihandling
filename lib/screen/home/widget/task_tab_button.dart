import 'package:flutter/material.dart';

import '../../../utils/appcolor.dart';
import '../../../utils/appstrings.dart';
import '../../../widget/custom_text.dart';

class TaskTabButtons extends StatefulWidget {
  const TaskTabButtons({super.key});

  @override
  State<TaskTabButtons> createState() => _TaskTabButtonsState();
}

class _TaskTabButtonsState extends State<TaskTabButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Appcolor.grey,
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(color: Appcolor.blue, borderRadius: BorderRadius.circular(20)),
                      child: Center(child: CustomText(text: Appstrings.homeboardsnoti, color: Appcolor.black, size: 20, maxline: 1, fontWeight: FontWeight.w700))),
                  CustomText(text: Appstrings.homeboard, color: Appcolor.white, size: 18, maxline: 1, fontWeight: FontWeight.bold)
                ],
              )),
        ),
        const Expanded(
          child: SizedBox(width: 1),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Appcolor.blue,
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [CustomText(text: Appstrings.homeactive, color: Appcolor.black, size: 18, maxline: 1, fontWeight: FontWeight.bold)],
              )),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Appcolor.grey,
          child: Padding(padding: const EdgeInsets.all(10), child: CustomText(text: Appstrings.homedone, color: Appcolor.white, size: 18, maxline: 1, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}

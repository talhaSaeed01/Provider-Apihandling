import 'package:flutter/material.dart';
import 'package:flutter_application_8_2_2023/model/days_class.dart';
import 'package:flutter_application_8_2_2023/utils/appcolor.dart';
import 'package:flutter_application_8_2_2023/widget/custom_text.dart';

class ListTasktabOption extends StatefulWidget {
  const ListTasktabOption({super.key});

  @override
  State<ListTasktabOption> createState() => _ListTasktabOptionState();
}

class _ListTasktabOptionState extends State<ListTasktabOption> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Padding(padding: const EdgeInsets.all(10), child: CustomText(text: days[index].daysname, color: Appcolor.white, size: 16, maxline: 1, fontWeight: FontWeight.bold)),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              width: 6,
              height: 0,
            ),
        itemCount: days.length);
  }
}

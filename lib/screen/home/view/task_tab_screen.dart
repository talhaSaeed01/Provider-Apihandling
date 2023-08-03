import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_8_2_2023/screen/home/widget/cardtile.dart';
import 'package:flutter_application_8_2_2023/screen/home/widget/list_tasktab_option.dart';
import 'package:flutter_application_8_2_2023/screen/home/widget/task_tab_button.dart';
import 'package:provider/provider.dart';

import '../../../provider/data_provider.dart';

class TaskTabView extends StatefulWidget {
  const TaskTabView({super.key});

  @override
  State<TaskTabView> createState() => _TaskTabViewState();
}

class _TaskTabViewState extends State<TaskTabView> {
  void initState() {
    Provider.of<DataProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const TaskTabButtons(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
          width: double.infinity,
          child: const ListTasktabOption(),
        ),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Consumer<DataProvider>(
              builder: (context, provider, child) {
                return provider.alldata.isEmpty
                    ? const Icon(
                        Icons.error,
                        size: 150,
                        color: Colors.grey,
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {},
                              child: CardTile(
                                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                                description: provider.alldata[index].description,
                                assignedName: provider.alldata[index].title,
                                price: provider.alldata[index].price,
                              ));
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 6,
                              height: 0,
                            ),
                        itemCount: provider.alldata.length);
              },
            ),
          ),
        )
      ],
    );
  }
}

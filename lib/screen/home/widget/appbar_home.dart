import 'package:flutter/material.dart';

import '../../../utils/appcolor.dart';

class AppbarHome extends StatefulWidget {
  const AppbarHome({super.key});

  @override
  State<AppbarHome> createState() => _AppbarHomeState();
}

class _AppbarHomeState extends State<AppbarHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: const Icon(Icons.person),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Appcolor.grey,
                      radius: 15,
                      child: const Icon(Icons.notification_add_rounded),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      child: CircleAvatar(
                          radius: 10,
                          child: Text(
                            '12',
                            style: TextStyle(fontSize: 10),
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Appcolor.grey,
                  radius: 15,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_8_2_2023/utils/appcolor.dart';
import 'package:flutter_application_8_2_2023/widget/custom_text.dart';

class CardTile extends StatelessWidget {
  final Color color;
  final String price;
  final String description;
  final String assignedName;
  const CardTile({super.key, required this.color, required this.description, required this.assignedName, required this.price});
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(35)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.06,
                        child: const Icon(Icons.person),
                      ),
                      Row(
                        children: [
                          CustomText(text: price, color: Appcolor.black, size: 15, maxline: 1, fontWeight: FontWeight.bold),
                          const SizedBox(
                            width: 2,
                          ),
                          const Icon(Icons.done)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  CustomText(text: assignedName, color: Appcolor.black, size: 20, maxline: 1, fontWeight: FontWeight.bold),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CustomText(text: description, color: Appcolor.black, size: 15, maxline: 3, fontWeight: FontWeight.bold),
                  ),

                  // Text(
                  //   assignedName,
                  //   style: TextStyle(
                  //     fontSize: screenWidth * 0.05,
                  //   ),
                  // ),
                  // Text(
                  //   title,
                  //   style: TextStyle(fontSize: screenWidth * 0.07),
                  //   overflow: TextOverflow.ellipsis,
                  // )
                ],
              ),
            )),
      ),
    );
  }
}

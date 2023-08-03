// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatefulWidget {
  String text;
  Color color;
  double size;
  int maxline;
  FontWeight fontWeight;
  CustomText({super.key, required this.text, required this.color, required this.size, required this.maxline, required this.fontWeight});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
        maxLines: widget.maxline,
        style: GoogleFonts.dmSans(
          textStyle: TextStyle(
            color: widget.color,
            fontSize: widget.size,
            fontWeight: widget.fontWeight,
          ),
        ));
  }
}

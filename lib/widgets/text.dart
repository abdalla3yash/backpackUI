import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize, height;
  final FontWeight fontWeight;
  final Color color;
  final Alignment alignment;

  CustomText(
      {this.text = '',
      this.fontSize,
      this.color = Colors.white,
      this.alignment,
      this.fontWeight = FontWeight.w900,
      this.height = 1});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize,
            height: height,
            color: color,
            fontWeight: fontWeight),
      ),
    );
  }
}

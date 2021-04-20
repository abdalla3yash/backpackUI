import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  CustomTextFormField(
      {this.hint,
      this.color = Colors.black,
      this.fontSize = 14,
      this.fontWeight = FontWeight.bold});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

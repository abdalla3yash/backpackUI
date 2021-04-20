import 'package:backpack/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onpressed;
  final Color textColor, bgColor, bordercolor;
  final FontWeight fontWeight;
  final double fontSize, borderWidth;

  CustomButton(
      {this.text,
      this.onpressed,
      this.textColor,
      this.bgColor,
      this.fontSize,
      this.fontWeight,
      this.bordercolor,
      this.borderWidth = 1});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: RaisedButton(
          onPressed: onpressed,
          color: this.bgColor,
          child: CustomText(
            text: text,
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(25.0),
              side: BorderSide(
                color: this.bordercolor,
                width: borderWidth,
              ))),
    );
  }
}

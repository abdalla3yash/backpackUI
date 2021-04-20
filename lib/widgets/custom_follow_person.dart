import 'package:flutter/material.dart';
import 'package:backpack/constant.dart';
import 'package:backpack/widgets/custom_button.dart';
import 'package:backpack/widgets/text.dart';

class CustomFollowPerson extends StatelessWidget {
  final String imagePath, name;
  CustomFollowPerson({this.imagePath, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: Image.asset(imagePath),
              ),
              CustomText(
                text: name,
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w200,
              ),
            ],
          ),
          Container(
            width: 100,
            height: 35,
            child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CustomButton(
                  text: 'Follow',
                  onpressed: () {},
                  fontSize: 14,
                  bgColor: Colors.white,
                  bordercolor: btnColor,
                  textColor: btnColor,
                  fontWeight: FontWeight.w300,
                  borderWidth: 2,
                )),
          ),
        ],
      ),
    );
  }
}

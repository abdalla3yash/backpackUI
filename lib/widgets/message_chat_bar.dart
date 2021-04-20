import 'package:flutter/material.dart';
import 'package:backpack/constant.dart';
import 'package:backpack/widgets/text.dart';
import 'package:backpack/screens/home/messages/chat.dart';

class MessagesChatBar extends StatelessWidget {
  final String imagePath, name, subtitle, date;
  final Color color, hintColor;
  MessagesChatBar(
      {this.color = Colors.white,
      this.date,
      this.imagePath,
      this.name,
      this.subtitle,
      this.hintColor = greyColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset(imagePath),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: name,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CustomText(
                    text: subtitle,
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: hintColor,
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              CustomText(
                text: date,
                color: greyColor,
                fontSize: 10,
                fontWeight: FontWeight.w100,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(5.0))),
            ],
          ),
        ],
      ),
    );
  }
}

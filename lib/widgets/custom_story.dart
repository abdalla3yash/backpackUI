import 'package:flutter/material.dart';
import 'text.dart';

class CustomStory extends StatelessWidget {
  final String imagePath, place;
  CustomStory({this.imagePath, this.place});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              alignment: Alignment.bottomLeft,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomText(
              text: place,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              alignment: Alignment.bottomLeft,
            ),
          )),
    );
  }
}

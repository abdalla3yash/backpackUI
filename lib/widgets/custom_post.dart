import 'package:flutter/material.dart';
import 'package:backpack/constant.dart';
import 'package:backpack/widgets/text.dart';

class CustomPost extends StatelessWidget {
  final String text,
      imagePath,
      daysText,
      townText,
      progressText,
      shareText,
      profileImagePath,
      name,
      timeText;

  CustomPost(
      {this.imagePath,
      this.text,
      this.daysText,
      this.progressText,
      this.shareText,
      this.townText,
      this.name,
      this.profileImagePath,
      this.timeText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        left: 20,
                      ),
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(profileImagePath)),
                    ),
                    CustomText(
                      text: name,
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CustomText(
                    text: timeText,
                    color: greyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: Container(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 20,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: CustomText(
                                    text: daysText,
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              CustomText(
                                text: '  day trip',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.18,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: townText,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              CustomText(
                                text: progressText,
                                color: Colors.amber,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  child: CustomText(
                    text: text,
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider()),
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                size: 24,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                Icons.share_outlined,
                                size: 24,
                              ),
                              onPressed: () {}),
                          GestureDetector(
                            onTap: () {
                              print('clicked');
                            },
                            child: Container(
                              height: 25,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: CustomText(
                                  text: shareText,
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.bookmark,
                            color: greyColor,
                            size: 24,
                          ),
                          onPressed: () {})
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                )
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 25),
          ),
        ],
      ),
    );
  }
}

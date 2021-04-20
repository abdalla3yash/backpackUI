import 'package:backpack/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:backpack/constant.dart';
import 'package:backpack/widgets/custom_button.dart';
import 'package:backpack/widgets/custom_story.dart';
import 'package:backpack/widgets/custom_previous.dart';
import 'setting.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile-header.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Container(
                    child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: '7',
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              CustomText(
                                text: '  day trip',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          CustomText(
                            text: 'Wed, 4 NOV',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'IN ROUTE',
                            color: Color(0xFFFFDD00),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/hor_plan_white.png'),
                              SizedBox(width: 10),
                              CustomText(
                                text: 'OSLO ... JAPAN',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ))),
            Container(
              height: 100,
              color: Colors.grey.shade100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Alex',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          text: 'Very Experienced',
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/images/stars.png'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Image.asset('assets/images/people8.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      CustomText(
                        text: '50,000 mi',
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                      CustomText(
                        text: 'Backpacker',
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset('assets/images/plan.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: 'Next trip',
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                      CustomText(
                        text: 'Moscow',
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    child: CustomButton(
                      text: 'Edit',
                      onpressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingScreen(),
                          ),
                        );
                      },
                      bgColor: btnColor,
                      bordercolor: btnColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(
                text: 'Travel photos',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(
                text: 'Photos of her travel from previous trips',
                color: greyColor,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomStory(
                    imagePath: "assets/images/story1.png",
                    place: 'BALI',
                  ),
                  CustomStory(
                    imagePath: "assets/images/story2.png",
                    place: 'JABAN',
                  ),
                  CustomStory(
                    imagePath: "assets/images/story3.png",
                    place: 'EGYPT',
                  ),
                  CustomStory(
                    imagePath: "assets/images/map2.png",
                    place: 'Asia',
                  ),
                  CustomStory(
                    imagePath: "assets/images/story4.jpg",
                    place: 'USA',
                  ),
                  CustomStory(
                    imagePath: "assets/images/story5.png",
                    place: 'MALDIVES',
                  ),
                  CustomStory(
                    imagePath: "assets/images/map3.png",
                    place: 'Brazil',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(
                text: 'Previous Trips',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: CustomText(
                text: 'Trips she has taken in the past 12 months',
                color: greyColor,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CustomPrevious(
                    imagePath: 'assets/images/previous4.jpg',
                    city: 'Bali ... MEXICO',
                    time: 'Wed, 18 MAY',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomPrevious(
                    imagePath: 'assets/images/previous3.jpg',
                    city: 'LONDON ... BALI',
                    time: 'Wed, 11 MAY',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomPrevious(
                    imagePath: 'assets/images/previous2.png',
                    city: 'PARIS ... LONDON',
                    time: 'Wed, 18 MAY',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomPrevious(
                    imagePath: 'assets/images/previous1.png',
                    city: 'PARIS ... LONDON',
                    time: 'Wed, 18 MAY',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        )),
      ),
    );
  }
}

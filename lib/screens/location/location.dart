import 'package:backpack/screens/location/map.dart';
import 'package:flutter/material.dart';
import 'package:backpack/constant.dart';
import 'package:backpack/widgets/text.dart';

import 'package:backpack/widgets/custom_previous.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Trips',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: greyColor,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 1.0,
                      ),
                    ],
                  ),
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CustomText(
                          text: "Enter a name of a city",
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Requests',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                CustomText(
                  text: 'See all',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: greyColor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/people2.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomPrevious(
                              imagePath: 'assets/images/previous1.png',
                              city: 'Bali ... MEXICO',
                              time: 'Wed, 18 MAY',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: 'Hey when are you going?',
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/people3.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomPrevious(
                              imagePath: 'assets/images/previous2.png',
                              city: 'Bali ... MEXICO',
                              time: 'Wed, 18 MAY',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: 'Hey when are you going?',
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/people4.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomPrevious(
                              imagePath: 'assets/images/previous2.png',
                              city: 'Bali ... MEXICO',
                              time: 'Wed, 18 MAY',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: 'Hey when are you going?',
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Invites',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                CustomText(
                  text: 'See all',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: greyColor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/people5.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomPrevious(
                              imagePath: 'assets/images/previous2.png',
                              city: 'Bali ... MEXICO',
                              time: 'Wed, 18 MAY',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: Image.asset('assets/images/people1.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: 'you',
                              color: greyColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CustomText(
                              text: 'Wanna join me on this trip?',
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/people6.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomPrevious(
                              imagePath: 'assets/images/user4.png',
                              city: 'Bali ... MEXICO',
                              time: 'Wed, 18 MAY',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: Image.asset('assets/images/people1.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: 'you',
                              color: greyColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CustomText(
                              text: 'Wanna join me on this trip?',
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/people7.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomPrevious(
                              imagePath: 'assets/images/previous2.png',
                              city: 'Bali ... MEXICO',
                              time: 'Wed, 18 MAY',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: Image.asset('assets/images/people1.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: 'you',
                              color: greyColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CustomText(
                              text: 'Hey when are you going?',
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    backgroundColor: btnColor,
                    foregroundColor: Colors.white,
                    splashColor: searchShadowColor,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(
                    text: 'Add a trip',
                    fontSize: 12,
                    color: greyColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

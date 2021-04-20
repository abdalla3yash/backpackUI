import 'package:backpack/widgets/custom_story.dart';
import 'package:backpack/widgets/text.dart';
import 'package:backpack/widgets/custom_post.dart';
import 'package:flutter/material.dart';
import 'package:backpack/screens/search/search.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Traveling to?',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 35, child: VerticalDivider(color: Colors.grey)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchScreen(),
                        ),
                      );
                    },
                    child: Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 35,
                        child: CustomText(
                          text: "Enter a name of a city you're traveling to",
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Container(
                      height: 35, child: VerticalDivider(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomPost(
              imagePath: 'assets/images/user4.png',
              text:
                  'On a trip to America, looking for someone to join me on this epic journey through American',
              daysText: '7',
              progressText: 'In Route',
              townText: 'Paris',
              shareText: 'Ticket',
              name: 'Ragh',
              profileImagePath: 'assets/images/person1.png',
              timeText: '2 hours ago',
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: CustomText(
                text: 'Popular destinations',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                alignment: Alignment.centerLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomStory(
                      imagePath: "assets/images/story4.jpg",
                      place: 'USA',
                    ),
                    CustomStory(
                      imagePath: "assets/images/story5.png",
                      place: 'MALDIVES',
                    ),
                    CustomStory(
                      imagePath: "assets/images/map2.png",
                      place: 'Asia',
                    ),
                    CustomStory(
                      imagePath: "assets/images/map3.png",
                      place: 'Brazil',
                    ),
                    CustomStory(
                      imagePath: "assets/images/map5.png",
                      place: 'Egypt',
                    ),
                    CustomStory(
                      imagePath: "assets/images/story1.png",
                      place: 'BALI',
                    ),
                    CustomStory(
                      imagePath: "assets/images/map1.png",
                      place: 'Asia',
                    ),
                    CustomStory(
                      imagePath: "assets/images/story2.png",
                      place: 'JABAN',
                    ),
                    CustomStory(
                      imagePath: "assets/images/story3.png",
                      place: 'MALDIVES',
                    ),
                    CustomStory(
                      imagePath: "assets/images/map1.png",
                      place: 'London',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomPost(
              imagePath: 'assets/images/story1.png',
              text:
                  'Going on a trip to Japan, looking for someone to join me on this epic journey through Asian lifestyle.',
              daysText: '10',
              progressText: 'ON TRIP',
              townText: 'Bali',
              shareText: 'Hotel',
              name: 'danial',
              profileImagePath: 'assets/images/people6.png',
              timeText: '4 hours ago',
            ),
            SizedBox(
              height: 10,
            ),
            CustomPost(
              imagePath: 'assets/images/story2.png',
              text:
                  'Going on a trip to Japan, looking for someone to join me on this epic journey through Asian lifestyle.',
              daysText: '6',
              progressText: 'ON TRIP',
              townText: 'China',
              shareText: 'Shared',
              name: 'Mia',
              profileImagePath: 'assets/images/people7.png',
              timeText: '1 day ago',
            ),
            SizedBox(
              height: 10,
            ),
            CustomPost(
              imagePath: 'assets/images/user3.png',
              text: '15 days travel package including breakfast at hotel.',
              daysText: '10',
              progressText: 'ON TRIP',
              townText: 'Maldives',
              shareText: 'Fully Paid',
              name: 'lana',
              profileImagePath: 'assets/images/people8.png',
              timeText: '2 days ago',
            ),
            SizedBox(
              height: 10,
            ),
            CustomPost(
              imagePath: 'assets/images/story3.png',
              text:
                  'Going on a trip to Japan, looking for someone to join me on this epic journey through Asian lifestyle.',
              daysText: '10',
              progressText: 'ON TRIP',
              townText: 'Bali',
              shareText: 'boat',
              name: 'danial',
              profileImagePath: 'assets/images/people9.png',
              timeText: '2 days ago',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

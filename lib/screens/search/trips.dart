import 'package:flutter/material.dart';
import 'package:backpack/widgets/custom_post.dart';

class TripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomPost(
              imagePath: 'assets/images/user1.png',
              text:
                  'On a trip to America, looking for someone to join me on this epic journey through American',
              daysText: '7',
              progressText: 'ON TRIP',
              townText: 'Paris',
              shareText: 'Join',
              name: 'Jennifer',
              profileImagePath: 'assets/images/people2.png',
              timeText: '2 hours ago',
            ),
            SizedBox(
              height: 20,
            ),
            CustomPost(
              imagePath: 'assets/images/user2.png',
              text: 'gsadasd iudafudsib idab',
              daysText: '10',
              progressText: 'IN 2 DAYS',
              townText: 'Los Anglos',
              shareText: 'Join',
              name: 'lisa',
              profileImagePath: 'assets/images/people5.png',
              timeText: '4 hours ago',
            ),
            SizedBox(
              height: 30,
            ),
          ],
        )),
      ),
    );
  }
}

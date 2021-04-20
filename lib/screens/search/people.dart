import 'package:backpack/widgets/custom_follow_person.dart';
import 'package:backpack/widgets/custom_followed_person.dart';

import 'package:flutter/material.dart';

class PeopleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            CustomFollowPerson(
                imagePath: 'assets/images/people1.png', name: 'Alex'),
            SizedBox(
              height: 25,
            ),
            CustomFollowPerson(
                imagePath: 'assets/images/people2.png', name: 'Sandra'),
            SizedBox(
              height: 25,
            ),
            CustomFollowPerson(
                imagePath: 'assets/images/people3.png', name: 'Lisa'),
            SizedBox(
              height: 25,
            ),
            CustomFollowPerson(
                imagePath: 'assets/images/people4.png', name: 'Mike'),
            SizedBox(
              height: 25,
            ),
            CustomFollowedPerson(
                imagePath: 'assets/images/people5.png', name: 'Jennifer'),
            SizedBox(
              height: 25,
            ),
            CustomFollowPerson(
                imagePath: 'assets/images/people6.png', name: 'Travis'),
            SizedBox(
              height: 25,
            ),
            CustomFollowedPerson(
                imagePath: 'assets/images/people7.png', name: 'Sia'),
            SizedBox(
              height: 25,
            ),
            CustomFollowedPerson(
                imagePath: 'assets/images/people8.png', name: 'karima'),
            SizedBox(
              height: 25,
            ),
            CustomFollowedPerson(
                imagePath: 'assets/images/people9.png', name: 'Mohsen'),
            SizedBox(
              height: 25,
            ),
          ],
        )),
      ),
    );
  }
}

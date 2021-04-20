import 'package:flutter/material.dart';
import 'package:backpack/screens/search/people.dart';
import 'package:backpack/screens/search/trips.dart';
import 'package:backpack/constant.dart';
import 'package:backpack/widgets/text.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.amber,
          bottom: TabBar(
            tabs: [
              Tab(
                child: CustomText(
                  text: 'Trips',
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Tab(
                child: CustomText(
                  text: 'People',
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          title: Text(
            'Search',
            style: TextStyle(
                color: greyColor, fontSize: 16, fontWeight: FontWeight.w200),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: TabBarView(
          children: [
            TripsScreen(),
            PeopleScreen(),
          ],
        ),
      ),
    );
  }
}

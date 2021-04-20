import 'dart:async';
import 'package:backpack/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:backpack/widgets/text.dart';
import 'package:backpack/widgets/custom_button.dart';

import 'package:backpack/constant.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomGoogleMap(),
          DraggableScrollableSheet(
            initialChildSize: 0.30,
            minChildSize: 0.15,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: CustomScrollViewContent(),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// Google Map in the background
class CustomGoogleMap extends StatefulWidget {
  @override
  _CustomGoogleMapState createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  Completer<GoogleMapController> _controller = Completer();


  static final CameraPosition _kGooglePlex = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(51.5074, 0.1278),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.terrain,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}

class CustomCategoryChip extends StatelessWidget {
  final IconData iconData;
  final String title;

  CustomCategoryChip(this.iconData, this.title);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Row(
        children: <Widget>[
          Icon(iconData, size: 16),
          SizedBox(width: 8),
          Text(title)
        ],
      ),
      backgroundColor: Colors.grey[50],
    );
  }
}

/// Content of the DraggableBottomSheet's child SingleChildScrollView
class CustomScrollViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: CustomInnerContent(),
      ),
    );
  }
}

class CustomInnerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 12),
        CustomDraggingHandle(),
        SizedBox(height: 16),
        CustomExploreBerlin(),
        SizedBox(height: 16),
        CustomHorizontallyScrollingRestaurants(),
        SizedBox(height: 24),
        CustomFeaturedListsText(),
        SizedBox(height: 16),
        CustomFeaturedItemsGrid(
          text1: 'From',
          text2: 'Oslo',
          color: searchShadowColor,
        ),
        SizedBox(height: 24),
        CustomFeaturedItemsGrid(
          text1: 'To',
          text2: 'London',
          color: btnColor,
        ),
        SizedBox(height: 24),
        CustomRecentPhotoLarge(),
        SizedBox(height: 12),
        SizedBox(height: 16),
      ],
    );
  }
}

class CustomDraggingHandle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
    );
  }
}

class CustomExploreBerlin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Explore London",
            style: TextStyle(fontSize: 22, color: Colors.black45)),
        SizedBox(width: 8),
        Container(
          height: 24,
          width: 24,
          child: Icon(Icons.arrow_forward_ios, size: 12, color: Colors.black54),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
        ),
      ],
    );
  }
}

class CustomHorizontallyScrollingRestaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomRestaurantCategory(
              text: 'assets/images/map1.png',
            ),
            SizedBox(width: 12),
            CustomRestaurantCategory(
              text: 'assets/images/map2.png',
            ),
            SizedBox(width: 12),
            CustomRestaurantCategory(
              text: 'assets/images/map3.png',
            ),
            SizedBox(width: 12),
            CustomRestaurantCategory(
              text: 'assets/images/map4.png',
            ),
            SizedBox(width: 12),
            CustomRestaurantCategory(
              text: 'assets/images/map5.png',
            ),
            SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}

class CustomFeaturedListsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      //only to left align the text
      child: Row(
        children: <Widget>[
          Text("Let's add your trip", style: TextStyle(fontSize: 14))
        ],
      ),
    );
  }
}

class CustomFeaturedItemsGrid extends StatelessWidget {
  final String text1, text2;
  final Color color;
  CustomFeaturedItemsGrid({this.color, this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
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
                  Icon(
                    Icons.location_pin,
                    size: 24,
                    color: color,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomText(
                    text: text1,
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomText(
                    text: text2,
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class CustomRecentPhotoLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomFeaturedItem(),
    );
  }
}

class CustomRestaurantCategory extends StatelessWidget {
  final String text;
  CustomRestaurantCategory({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: ExactAssetImage(text), fit: BoxFit.contain),
        borderRadius: BorderRadius.circular(8),
      ),
      // child: Center(
      //   child: CustomText(
      //     text: word,
      //     fontSize: 10,
      //     color: Colors.white,
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),
    );
  }
}

class CustomFeaturedItem extends StatefulWidget {
  @override
  _CustomFeaturedItemState createState() => _CustomFeaturedItemState();
}

class _CustomFeaturedItemState extends State<CustomFeaturedItem> {
  final isSelected = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              CustomText(
                text: 'With',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w900,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width * 0.7,
                child: CustomTextFormField(
                  hint: '  Who is traveling with you',
                  color: greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              CustomText(
                text: 'Visibility',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w900,
              ),
              SizedBox(
                width: 20,
              ),
              ToggleButtons(
                borderWidth: 10,
                borderColor: Colors.white,
                disabledBorderColor: greyColor,
                selectedColor: Colors.white,
                selectedBorderColor: btnColor,
                fillColor: btnColor,
                splashColor: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
                constraints: BoxConstraints(minHeight: 36.0),
                isSelected: isSelected,
                onPressed: (index) {
                  // Respond to button selection
                  setState(() {
                    isSelected[index] = !isSelected[index];
                  });
                },
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Female'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Male'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('All'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: 'Trip for',
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: 'The kind of trips you take reflects on your profile.',
              color: greyColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 100,
                child: RaisedButton(
                    onPressed: () {},
                    color: btnColor,
                    child: CustomText(
                      text: 'Backpack',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                height: 40,
                width: 100,
                child: RaisedButton(
                    onPressed: () {},
                    color: searchShadowColor,
                    child: CustomText(
                      text: 'Vacation',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                height: 40,
                width: 100,
                child: RaisedButton(
                    onPressed: () {},
                    color: Colors.black,
                    child: CustomText(
                      text: 'Business',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
            alignment: Alignment.centerLeft,
            text: 'Dates',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: TextField(
              decoration: new InputDecoration(
                prefixIcon: Icon(Icons.date_range),
                labelText: "Departure date",
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: TextField(
              decoration: new InputDecoration(
                prefixIcon: Icon(Icons.date_range),
                labelText: "Return date",
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: CustomText(
              alignment: Alignment.centerLeft,
              text: 'Class',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Container(
            height: 50,
            child: TextField(
              decoration: new InputDecoration(
                prefixIcon: Icon(Icons.verified_user_sharp),
                labelText: "Economy",
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 90,
            child: CustomButton(
              text: 'Done',
              bgColor: Colors.white,
              bordercolor: btnColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              onpressed: () {
                Navigator.pop(context);
              },
              textColor: btnColor,
            ),
          ),
        ],
      ),
    );
  }
}

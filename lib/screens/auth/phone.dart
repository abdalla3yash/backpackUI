import 'package:backpack/constant.dart';
import 'package:backpack/screens/home/home.dart';
import 'package:backpack/widgets/custom_button.dart';
import 'package:backpack/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 40, right: 25, left: 10, bottom: 20),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                CustomText(
                  text: 'back',
                  color: Colors.black,
                  fontSize: 14,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomText(
              text: 'Your phone \nnumber',
              color: Colors.black,
              fontSize: 40,
              height: 1.5,
              alignment: Alignment.topLeft,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
              initialCountryCode: 'EG',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
            child: CustomButton(
              text: 'Next',
              bgColor: Colors.white,
              textColor: btnColor,
              fontSize: 20,
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              fontWeight: FontWeight.w900,
              bordercolor: btnColor,
            ),
          )
        ]),
      ),
    );
  }
}

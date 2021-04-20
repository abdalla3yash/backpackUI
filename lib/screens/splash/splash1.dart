import 'package:backpack/constant.dart';
import 'package:backpack/screens/auth/login.dart';
import 'package:backpack/screens/auth/signup.dart';
import 'package:backpack/widgets/custom_button.dart';
import 'package:backpack/widgets/text.dart';
import 'package:flutter/material.dart';

class Splash1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/splash.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.15),
                  child: Image.asset('assets/images/logo.png',
                      fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomText(
                  text: 'Travel with people. Make new friends.',
                  fontSize: 13,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.5),
                CustomButton(
                  text: 'Sign Up',
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ),
                    );
                  },
                  bgColor: Colors.white,
                  textColor: btnColor,
                  bordercolor: btnColor,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Log In',
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  bgColor: btnColor,
                  textColor: Colors.white,
                  bordercolor: btnColor,
                ),
              ],
            )));
  }
}

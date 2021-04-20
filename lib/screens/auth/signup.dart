import 'package:backpack/screens/auth/login.dart';
import 'package:backpack/screens/auth/phone.dart';
import 'package:backpack/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:backpack/constant.dart';
import 'package:backpack/widgets/custom_button.dart';
import 'package:backpack/widgets/text.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, right: 25, left: 10, bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: CustomText(
                      text: 'Login',
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  CustomTextFormField(
                    hint: 'Name',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextFormField(
                    hint: 'Email',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'sign up',
              textColor: Colors.white,
              bgColor: btnColor,
              fontSize: 14,
              bordercolor: btnColor,
              fontWeight: FontWeight.w900,
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhoneNumberScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

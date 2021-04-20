import 'package:backpack/constant.dart';
import 'package:backpack/widgets/custom_button.dart';
import 'package:backpack/widgets/text.dart';
import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, right: 25, left: 10, bottom: 30),
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
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CustomText(
                        text: 'Terms of Service',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomText(
                  text: 'Terms of Service',
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomText(
                  text:
                      't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
                  height: 1.4,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomText(
                  text:
                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  height: 1.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomText(
                  text:
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  height: 1.4,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 90,
                    child: CustomButton(
                      text: 'Accept',
                      bgColor: searchShadowColor,
                      bordercolor: searchShadowColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      onpressed: () {
                        Navigator.pop(context);
                      },
                      textColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 90,
                    child: CustomButton(
                      text: 'Decline',
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
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:backpack/constant.dart';
import 'package:backpack/widgets/text.dart';
import 'package:backpack/widgets/message_chat_bar.dart';

import 'package:backpack/widgets/custom_text_form_field.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Expanded(
                flex: -1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Search',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    CustomTextFormField(
                      hint: '    Search by user or places',
                      color: greyColor,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomText(
                      text: 'Chats',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people1.png',
                        name: 'Alex',
                        color: Colors.blue,
                        hintColor: Colors.black54,
                        date: '9:45AM',
                        subtitle: 'Hey when are you going?',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people2.png',
                        name: 'Ragh',
                        color: Colors.blue,
                        hintColor: Colors.black54,
                        date: '9:45AM',
                        subtitle: "Ok, Let's Start it ",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people3.png',
                        name: 'Sandra',
                        date: '10:39AM',
                        subtitle: 'I would love to take this trip with ...',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people4.png',
                        name: 'Mark',
                        date: '4:06PM',
                        subtitle: 'Sure, lets do it.',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people5.png',
                        name: 'Lisa',
                        date: '3:06PM',
                        subtitle: 'Yes, it was an amazing experience',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people6.png',
                        name: 'Androw',
                        date: '1:38PM',
                        subtitle: 'Loved it out there.',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people7.png',
                        name: 'Mira',
                        date: '9:32AM',
                        subtitle: "Can't wait to do it again",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people8.png',
                        name: 'Dua',
                        date: '9:32AM',
                        subtitle: "Can't wait to do it again",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MessagesChatBar(
                        imagePath: 'assets/images/people9.png',
                        name: 'Radi',
                        date: '9:32AM',
                        subtitle: "Can't wait to do it again",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

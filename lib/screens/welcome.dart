import 'dart:ui';

import "package:flutter/material.dart";
import 'package:moodly/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moodly'),
        actions: [
          TextButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    const CircleAvatar(
                     radius: 20.0,
                     backgroundImage: AssetImage('images/profile.jpeg'),
                   ),
                  const SizedBox(
                    width:5.0,
                  ),
                  Column(
                    children: const [
                      Text(
                        'By Zesta',
                        style: kAppBarTextStyle,
                      ),
                      Text(
                        'Follow on Twitter',
                        style: kAppBarTextStyle,
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}

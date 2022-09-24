import 'package:audioplayers/audioplayers.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moodly/components/audioComponent.dart';
import 'package:moodly/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id = 'welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(FontAwesomeIcons.plus),
      ),
      appBar: AppBar(
        title: const Text('Moodly'),
        backgroundColor: Colors.blueGrey,
        actions: [
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/profile.jpeg'),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListView(
            children:[
              Wrap(
              direction: Axis.horizontal,
              spacing: 15.0,
              runSpacing: 15.0,
              children: const [
                AudioCP(icon: FontAwesomeIcons.cloud,name:'Rain'),
                AudioCP(icon: FontAwesomeIcons.trainSubway,name:'Train'),
                AudioCP(icon: FontAwesomeIcons.futbol,name:'Stadium'),
                AudioCP(icon: FontAwesomeIcons.boltLightning,name:'lightning'),
                AudioCP(icon: FontAwesomeIcons.fire,name:'Fire'),
                AudioCP(icon: FontAwesomeIcons.kiwiBird,name:'Birds'),
                AudioCP(icon: FontAwesomeIcons.wind,name:'Wind'),
                AudioCP(icon: FontAwesomeIcons.personWalking,name:'Steps'),
                AudioCP(icon: FontAwesomeIcons.water,name:'Ocean'),
                AudioCP(icon: FontAwesomeIcons.clock,name:'Clock'),
              ],
            ),
          ]
          ),
        ),
      )
    );
  }
}

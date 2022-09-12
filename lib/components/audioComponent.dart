// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moodly/constants.dart';

class AudioCP extends StatefulWidget {
  const AudioCP({Key? key, required this.icon, required this.name}) : super(key: key);
  final IconData icon;
  final String name;
  @override
  State<AudioCP> createState() => _AudioCPState();
}

class _AudioCPState extends State<AudioCP> {
  bool isPlaying = false;
  double volumeLevel = 0.3;
  final player = AudioPlayer();
  dynamic playAudio(String audioName) async{
    await player.play(AssetSource('$audioName.mp3'));
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() async{
        if(isPlaying == false){
          await playAudio(widget.name.toLowerCase());
          setState(() {
            isPlaying = true;
          });
        }else {
          await player.stop();
          setState(() {
            isPlaying = false;
          });
        }
      } ,
      child: Container(
        width: 165.0,
        height: 180.0,
        decoration: isPlaying ? kContainerPlaying:kContainerIdle,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.name,
              textAlign: TextAlign.start,
              style: TextStyle(
              ),
            ),
            Icon(widget.icon,size:60.0,color:Colors.lightBlueAccent),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Expanded(
                flex: 14,
                child: Slider(
                  value: volumeLevel,
                  onChanged: (value) async{
                    await player.setVolume(value);
                    setState(() {
                      volumeLevel = value;
                    });
                  },
                  max: 1,
                ),
              ),
              // SizedBox(
              //   width: 5.0,
              // ),
              Icon(FontAwesomeIcons.volumeLow,size: 15.0,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

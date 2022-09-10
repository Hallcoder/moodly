// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AudioCP extends StatefulWidget {
  const AudioCP({Key? key, required this.icon, required this.name}) : super(key: key);
  final IconData icon;
  final String name;
  @override
  State<AudioCP> createState() => _AudioCPState();
}

class _AudioCPState extends State<AudioCP> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 165.0,
        height: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
        ),
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
            Icon(widget.icon,size:60.0),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Expanded(
                flex: 14,
                child: Slider(
                  value: 12.0,
                  onChanged: (value) {},
                  max: 100,
                ),
              ),
              // SizedBox(
              //   width: 5.0,
              // ),
              Icon(FontAwesomeIcons.volumeHigh,size: 15.0,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

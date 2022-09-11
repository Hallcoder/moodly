import 'package:flutter/material.dart';

const kAppBarTextStyle  = TextStyle(
    color: Colors.lightBlueAccent,
    fontSize: 10.0,
    fontWeight: FontWeight.bold
);
var kContainerPlaying = BoxDecoration(
border:  Border.all(color: Colors.orange,width: 2),
gradient: LinearGradient(
    begin:Alignment.topRight,
    end: Alignment.bottomLeft,
  colors: const [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo
  ]
)
);
var kContainerIdle = BoxDecoration(
    border:  Border.all(color: Colors.blueGrey,width:2)
);


import 'package:flutter/material.dart';

const kAppBarTextStyle  = TextStyle(
    color: Colors.lightBlueAccent,
    fontSize: 10.0,
    fontWeight: FontWeight.bold
);
var kContainerPlaying = BoxDecoration(
border:  Border.all(color: Colors.orange,width: 2),
borderRadius: BorderRadius.circular(12.0),
gradient: LinearGradient(
    begin:Alignment.topRight,
    end: Alignment.bottomLeft,
  colors: const [
    Colors.red,
    Colors.orange,
    Colors.indigo
  ]
)
);
var kContainerIdle = BoxDecoration(
    color: Colors.blueGrey,
    borderRadius: BorderRadius.circular(12.0),
    border:  Border.all(width:2)
);


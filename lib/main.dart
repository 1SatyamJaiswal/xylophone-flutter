// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audiofileplayer/audio_system.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MainApp());

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  MainApp({super.key});

  playSound(int sound) async {
    Audio.load('assets/note$sound.wav')..play()..dispose();
  }

  Expanded buildKey({required Color color, required int key}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(key);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color:Colors.red,key:1),
              buildKey(color:Colors.orange,key:2),
              buildKey(color:Colors.yellow,key:3),
              buildKey(color:Colors.green,key:4),
              buildKey(color:Colors.teal,key:5),
              buildKey(color:Colors.blue,key:6),
            ],
          ),
        ),
      ),
    );
  }
}

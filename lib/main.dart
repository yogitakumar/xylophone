import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyXylophoneApp());

class MyXylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play(
      ('note$n.wav'),
    );
  }

  Expanded buildKey({Color color, int n}) {
    return Expanded(
      child: FlatButton(
        shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        child:Row(
            children: <Widget>[
        Container(
            height: 20,
            width: 20,
            margin: EdgeInsets.only(left:39),
            decoration:
            BoxDecoration(color: Colors.white70, shape: BoxShape.circle)),
         Container(
            height: 20,
            width: 20,
            margin: EdgeInsets.only(left: 270),
            decoration:
                BoxDecoration(color: Colors.white70, shape: BoxShape.circle)),
        ]
        ),
        color: color,
        onPressed: () {
          playSound(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, n: 1),
              buildKey(color: Colors.orange, n: 2),
              buildKey(color: Colors.yellow, n: 3),
              buildKey(color: Colors.green, n: 4),
              buildKey(color: Colors.teal, n: 5),
              buildKey(color: Colors.blue, n: 6),
              buildKey(color: Colors.purple, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}

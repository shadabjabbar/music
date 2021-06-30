import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  void playSound(int num) {
    final players = AudioCache();
    players.play('note$num.wav');
  }

  Widget displayButton(int num, Color col) {
    return Expanded(
      child: FlatButton(
        onPressed: () {playSound(num);},
        child: Text(''),
        color: col,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              displayButton(1, Colors.blueAccent),
              displayButton(2, Colors.purpleAccent),
              displayButton(3, Colors.redAccent),
              displayButton(4, Colors.tealAccent),
              displayButton(5, Colors.pinkAccent),
              displayButton(6, Colors.yellowAccent),
              displayButton(7, Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }
}

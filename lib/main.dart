import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundName) {
    final player = AudioCache();
    player.play('note$soundName.wav');
    print('clicked');
  }

  InkWell buildKey({height, int soundName}) {
    return InkWell(
      onTap: () {
        playSound(soundName);
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[],
        ),
        height: height,
        width: 30.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[200],
        body: Container(
          child: Container(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildKey(height: 540.0, soundName: 11),
                  buildKey(height: 560.0, soundName: 7),
                  buildKey(height: 580.0, soundName: 3),
                  buildKey(height: 600.0, soundName: 1),
                  buildKey(height: 620.0, soundName: 10),
                  buildKey(height: 640.0, soundName: 6),
                  buildKey(height: 660.0, soundName: 4),
                  buildKey(height: 640.0, soundName: 8),
                  buildKey(height: 620.0, soundName: 12),
                  buildKey(height: 600.0, soundName: 2),
                  buildKey(height: 580.0, soundName: 5),
                  buildKey(height: 560.0, soundName: 9),
                ]),
          ),
        ),
      ),
    );
  }
}

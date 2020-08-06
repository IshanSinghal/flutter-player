import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LocalMusic extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AudioPlayer newPlayer = new AudioPlayer();
    AudioCache audio = new AudioCache(fixedPlayer: newPlayer);
    return new Scaffold(
      appBar: AppBar(
        title: Text("Ishan's Player"),
        backgroundColor: Color.fromRGBO(176, 0, 32, 0.8),
      ),
      // body: Text('Body'),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 400,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i1.sndcdn.com/artworks-000423178173-go17ps-t500x500.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                // borderRadius: BorderRadius.circular(12)
              ),
              Text(
                'Boom Shankar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Gurbax',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.fast_rewind),
                      onPressed: () {}),
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.pause),
                      onPressed: () {
                        newPlayer.pause();
                      }),
                  IconButton(
                      iconSize: 60,
                      icon: Icon(Icons.play_arrow),
                      onPressed: () {
                        // var audio = AudioCache();
                        audio.play('Boom_Shankar.mp3');
                        print('hi');
                      }),
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.stop),
                      onPressed: () {
                        newPlayer.stop();
                      }),
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.fast_forward),
                      onPressed: () {}),
                ],
              ),
            ],
          )),
    );
  }
}

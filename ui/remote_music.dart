import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class RemoteMusic extends StatelessWidget {
  // This widget is the root of your application.
  // final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();
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
                        "https://media.socastsrm.com/wordpress/wp-content/blogs.dir/687/files/2018/11/MV5BNTZhNGM2ZTMtMzUzZi00ZmEzLWEzMTgtNjQyODA4ODk2ODQ0XkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                // borderRadius: BorderRadius.circular(12)
              ),
              Text(
                'Numb',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Linkin Park',
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
                        // newPlayer.pause();
                        assetsAudioPlayer.pause();
                      }),
                  IconButton(
                    iconSize: 60,
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {
                      // var audio = AudioCache();
                      // audio.play('Boom_Shankar.mp3');
                      assetsAudioPlayer.open(
                        Audio.network(
                            "https://raw.githubusercontent.com/IshanSinghal/flutter-player/master/Numb.mp3"),
                      );
                      print('hi');
                    },
                  ),
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.stop),
                      onPressed: () {
                        // newPlayer.stop();
                        assetsAudioPlayer.stop();
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

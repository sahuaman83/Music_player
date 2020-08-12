import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class LocalAudio extends StatelessWidget {
  AudioPlayer advancedPlayer;
  build(BuildContext b) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/faded.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.black,
                    onPressed: () async {
                      advancedPlayer = await AudioCache()
                          .play('audio/Alan-walker-Faded.mp3');
                      // AudioCache player = AudioCache();
                      //  player.play('audio/Alan-walker-Faded.mp3');
                    },
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.black,
                    onPressed: () async {
                      await advancedPlayer.pause();
                    },
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.black,
                    onPressed: () async {
                      await advancedPlayer.stop();
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/dj snake.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.black,
                    onPressed: () async {
                      advancedPlayer =
                          await AudioCache().play('audio/Magenta-riddim.mp3');
                    },
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.black,
                    onPressed: () async {
                      await advancedPlayer.pause();
                    },
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.black,
                    onPressed: () async {
                      await advancedPlayer.stop();
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/kedarnath.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.black,
                    onPressed: () async {
                      advancedPlayer =
                          await AudioCache().play('audio/Namo Namo.mp3');
                    },
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.black,
                    onPressed: () async {
                      await advancedPlayer.pause();
                    },
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  color: Colors.black12,
                  child: IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.black,
                    onPressed: () async {
                      await advancedPlayer.stop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

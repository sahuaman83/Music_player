import 'package:flutter/material.dart';
import 'ui/assetsvideo.dart';
import 'ui/assetsaudio.dart';
import 'ui/networkvideo.dart';
import 'ui/networkaudio.dart';

main() {
  runApp(MediaPlayer());
}

class MediaPlayer extends StatelessWidget {
  build(BuildContext b) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.list),
            actions: <Widget>[
              Icon(Icons.search),
            ],
            title: Text("Music Player"),
            backgroundColor: Colors.blueGrey[900],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.audiotrack),
                  text: "Offline \n Audio",
                ),
                Tab(
                  icon: Icon(Icons.queue_music),
                  text: "Online \nAudio",
                ),
                Tab(
                  icon: Icon(Icons.videocam),
                  text: "Offline \n Video",
                ),
                Tab(
                  icon: Icon(Icons.music_video),
                  text: "Online \n Video",
                ),
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    .1,
                    .6,
                    .9,
                    .20
                  ],
                  colors: [
                    Colors.black87,
                    Colors.blueGrey[300],
                    Colors.black87,
                    Colors.black87
                  ]),
            ),
            child: TabBarView(
              children: [
                LocalAudio(),
                NetworkAudio(),
                LocalVideo(),
                NetworkVideo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

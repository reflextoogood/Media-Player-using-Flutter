import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TrackSeven extends StatefulWidget {
  @override
  _TrackSevenState createState() => _TrackSevenState();
}

AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);

class _TrackSevenState extends State<TrackSeven> {
  bool play = false;
  bool stop = true;
  Duration _duration = new Duration();
  Duration _position = new Duration();

  playAudio() {
    if (play == false || stop == true) {
      newPlayer.setVolume(1.0);
      audio.play("music/Maroon 5 - Memories (Official Video).mp3");
      play = true;
      stop = false;
    }
  }

  pauseAudio() {
    if (play == true) {
      newPlayer.pause();
      play = false;
    }
  }

  stopAudio() {
    if (play == true && stop == false) {
      newPlayer.stop();
      play = false;
      stop = true;
    }
  }

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    newPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });

    newPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    newPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff6f4a8e),
        title: Text("Jazz & Pop"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              print("going back to home");
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Text(
            "Memories",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white),
          ),
          Center(
            child: Card(
              elevation: 5.0,
              color: Colors.transparent,
              child: InkWell(
                onTap: null,
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Memories.jpg')),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ))),
              ),
            ),
          ),
          Slider(
              value: _position.inSeconds.toDouble(),
              min: 0.0,
              max: _duration.inSeconds.toDouble(),
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              onChanged: (double value) {
                setState(() {
                  seekToSecond(value.toInt());
                  value = value;
                });
              }),
          Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              Text(
                "${_position.toString().split(".")[0]}",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 270.0),
              Text(
                "${_duration.toString().split(".")[0]}",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 80.0,
              ),
              IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: playAudio),
              SizedBox(
                width: 60.0,
              ),
              IconButton(
                  icon: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                  onPressed: pauseAudio),
              SizedBox(
                width: 60.0,
              ),
              IconButton(
                  icon: Icon(
                    Icons.stop,
                    color: Colors.white,
                  ),
                  onPressed: stopAudio)
            ],
          ),
        ],
      ),
    );
  }
}

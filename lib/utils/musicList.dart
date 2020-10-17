import 'package:flutter/material.dart';
import 'package:MediaPlayer/utils/player.dart';
import 'package:MediaPlayer/utils/song.dart';

Widget musicListItem(Song song, BuildContext context) {
  return ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: Image.asset("assets/${song.img}"),
        backgroundColor: Colors.transparent,
      ),
      title: Text(song.title,
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white)),
      subtitle: Text(song.artist,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          )),
      trailing: IconButton(
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
          onPressed: () {
            print("play Black Hole");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TrackOne(
                          song: song,
                        )));
          }));
}

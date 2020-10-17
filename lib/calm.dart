import 'package:flutter/material.dart';
import 'package:MediaPlayer/utils/song.dart';
import 'package:MediaPlayer/utils/category.dart';

List<Song> songs = AllSongs().songs;
List<Song> calmSongs = [songs[2], songs[3]];

class CalmMusic extends StatefulWidget {
  @override
  _CalmMusicState createState() => _CalmMusicState();
}

class _CalmMusicState extends State<CalmMusic> {
  @override
  Widget build(BuildContext context) {
    return categoryPage(context, calmSongs);
  }
}

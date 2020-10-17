import 'package:flutter/material.dart';
import 'package:MediaPlayer/utils/song.dart';
import 'package:MediaPlayer/utils/category.dart';

List<Song> songs = AllSongs().songs;
List<Song> beatSongs = [songs[0], songs[1]];

class Beats extends StatefulWidget {
  @override
  _BeatsState createState() => _BeatsState();
}

class _BeatsState extends State<Beats> {
  @override
  Widget build(BuildContext context) {
    return categoryPage(context, beatSongs);
  }
}

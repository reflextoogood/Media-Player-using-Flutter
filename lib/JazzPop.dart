import 'package:flutter/material.dart';
import 'package:MediaPlayer/utils/song.dart';
import 'package:MediaPlayer/utils/category.dart';

List<Song> songs = AllSongs().songs;

List<Song> jazzpopSongs = [songs[6], songs[7]];

class JazzPop extends StatefulWidget {
  @override
  _JazzPopState createState() => _JazzPopState();
}

class _JazzPopState extends State<JazzPop> {
  @override
  Widget build(BuildContext context) {
    return categoryPage(context, jazzpopSongs);
  }
}

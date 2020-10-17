import 'package:flutter/material.dart';
import 'package:MediaPlayer/utils/song.dart';
import 'package:MediaPlayer/utils/category.dart';

List<Song> songs = AllSongs().songs;

List<Song> hiphopSongs = [songs[4], songs[5]];

class HipHop extends StatefulWidget {
  @override
  _HipHopState createState() => _HipHopState();
}

class _HipHopState extends State<HipHop> {
  @override
  Widget build(BuildContext context) {
    return categoryPage(context, hiphopSongs);
  }
}

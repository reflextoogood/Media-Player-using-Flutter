import 'package:flutter/material.dart';
import 'package:MediaPlayer/utils/musicList.dart';
import 'package:MediaPlayer/utils/song.dart';

Widget categoryPage(BuildContext context, List<Song> songs) {
  return Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      backgroundColor: Color(0xff6f4a8e),
      title: Text("Beats..."),
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print("going back to home");
            Navigator.pop(context);
          }),
    ),
    body: SingleChildScrollView(
        child: SafeArea(
      child: Column(
        children: [
          musicListItem(songs[0], context),
          musicListItem(songs[1], context),
        ],
      ),
    )),
  );
}

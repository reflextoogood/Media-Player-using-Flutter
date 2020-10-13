import 'package:MediaPlayer/tracks/track7.dart';
import 'package:MediaPlayer/tracks/track8.dart';
import 'package:flutter/material.dart';

class JazzPop extends StatefulWidget {
  @override
  _JazzPopState createState() => _JazzPopState();
}

class _JazzPopState extends State<JazzPop> {
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/Memories.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Memories",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Maroon 5",
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
                          print("play memories");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackSeven()));
                        })),
                /* ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/Happy.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Happy",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Pharrell Williams",
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
                          print("play happy");
                        })),*/
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/Danielle.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Dance Monkey-Street Sax Performance",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Danielle",
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
                          print("play Sax");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackEight()));
                        })),
                /* ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/Postmalone.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Circles",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Post Malone",
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
                          print("play circle");
                        })),*/
              ],
            ),
          ],
        )),
      ),
    );
  }
}

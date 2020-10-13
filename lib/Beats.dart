import 'package:MediaPlayer/tracks/track3.dart';
import 'package:MediaPlayer/tracks/track4.dart';
import 'package:flutter/material.dart';

class Beats extends StatefulWidget {
  @override
  _BeatsState createState() => _BeatsState();
}

class _BeatsState extends State<Beats> {
  @override
  Widget build(BuildContext context) {
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
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/black_hole.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Black Hole Serenade",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("White Drift",
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
                                  builder: (context) => TrackThree()));
                        })),
                /*ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/martin.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("I Have A Dream",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Martin Luther Speech Remix",
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
                          print("play Martin");
                        })),*/
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/waykap.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("When I Get Sober",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("waykap",
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
                          print("play waykap");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackFour()));
                        })),
                /* ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/Ava.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Simon Says Let Go",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Ava Low",
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
                          print("play Ava");
                        })),*/
              ],
            ),
          ],
        )),
      ),
    );
  }
}

import 'package:MediaPlayer/tracks/track1.dart';
import 'package:MediaPlayer/tracks/track2.dart';
import 'package:flutter/material.dart';

class CalmMusic extends StatefulWidget {
  @override
  _CalmMusicState createState() => _CalmMusicState();
}

class _CalmMusicState extends State<CalmMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff6f4a8e),
        title: Text("Calm Music"),
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
                      child: Image.asset('assets/summer_pic.jpeg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Summer",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Nature sound during summer",
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
                          print("play summer ");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackOne()));
                        })),
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/sea_waves.jpeg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Sea",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Nature sound of sea",
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
                          print("play seas sounds");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackTwo()));
                        })),
                /* ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/jungle2.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Jungle",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Nature sound in the jungle",
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
                          print("play Jungle sound");
                        })),
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/Large_bonfire.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Fire",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Nature sound of the fire",
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
                          print("play fire sound");
                        })),*/
              ],
            ),
          ],
        )),
      ),
    );
  }
}

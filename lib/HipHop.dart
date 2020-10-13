import 'package:MediaPlayer/tracks/track5.dart';
import 'package:MediaPlayer/tracks/track6.dart';
import 'package:flutter/material.dart';

class HipHop extends StatefulWidget {
  @override
  _HipHopState createState() => _HipHopState();
}

class _HipHopState extends State<HipHop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff6f4a8e),
        title: Text("Hip Hop"),
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
                /* ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/Lose_Yourself.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Lose Yourself",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Eminem",
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
                          print("play lose yourself");
                        })),
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/drake.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Future-Life is Good",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("ft.Drake",
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
                          print("play drake");
                        })),*/
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/Godzilla.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("Godzilla",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Eminem",
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
                          print("play godzilla");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackFive()));
                        })),
                ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/The_box.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text("The Box",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    subtitle: Text("Roddy Rich",
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
                          print("play box");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackSix()));
                        })),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

import 'package:MediaPlayer/Beats.dart';
import 'package:MediaPlayer/HipHop.dart';
import 'package:MediaPlayer/JazzPop.dart';
import 'package:MediaPlayer/calm.dart';
import 'package:MediaPlayer/videos/video1.dart';
import 'package:MediaPlayer/videos/video2.dart';

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color(0xff6f4a8e),
          leading: Icon(Icons.dehaze),
          title: Text("Home"),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Music Collections ",
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Card(
                          color: Colors.black,
                          elevation: 5.0,
                          child: InkWell(
                            onTap: () {
                              print("tapped on calm music");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CalmMusic()));
                              // Navigator.pop(context)
                            },
                            child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/Calm.jpg')),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ))),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Card(
                          color: Colors.black,
                          elevation: 5.0,
                          child: InkWell(
                            onTap: () {
                              print("tapped on Beats");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Beats()));
                            },
                            child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/Beats.jpg')),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ))),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Card(
                          color: Colors.black,
                          elevation: 5.0,
                          child: InkWell(
                            onTap: () {
                              print("tapped on HipHop");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HipHop()));
                            },
                            child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/Hip2.jpg')),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ))),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Card(
                          color: Colors.black,
                          elevation: 5.0,
                          child: InkWell(
                            onTap: () {
                              print("tapped on Jazzpop");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => JazzPop()));
                            },
                            child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/Pop3.jpg')),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Videos',
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 1");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => VideoOne()));
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Alone-1.gif')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "Alone",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "Marshmello",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 2");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => VideoTwo()));
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/eminem.gif')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "Godzilla",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "Eminem",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      /* Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 3");
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/oldtown.gif')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "Old Town Road",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "Lil Nas X",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 4");
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Eminem21.gif')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "Without Me",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "Eminem",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 5");
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Serena-Safari.jpg')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "Safari",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "Serena",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 6");
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Neffex.jpg')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "Fight Back",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "NEFFEX",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 7");
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('assets/Sugar.jpg')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 2.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "Sugar & Brownies",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "DHARIA",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 8");
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Johnwick.gif')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "Think",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "Kaleida",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Card(
                              color: Colors.black,
                              elevation: 5.0,
                              child: InkWell(
                                onTap: () {
                                  print("tapped on video 9");
                                },
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Marsh2.gif')),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ))),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              child: Icon(
                                Icons.play_circle_filled,
                                size: 40.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                "FRIENDS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                              Text(
                                "Marshmallow",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),*/
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'ui/local_music.dart';
import 'ui/remote_music.dart';
import 'ui/local_vid.dart';
import 'ui/remote_vid.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Ishan's player",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.grey.shade900);

    var mybody = TabBarView(children: [
      Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            decoration: new BoxDecoration(color: Colors.grey.shade900),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(bottom: 12),
            child: Text(
              "On Device Music",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                // backgroundColor: Color.fromRGBO(176, 0, 32, 0.8),
              ),
            ),
          ),

          //song 1
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LocalMusic()));
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 75,
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i1.sndcdn.com/artworks-000423178173-go17ps-t500x500.jpg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: new Offset(20.0, 10.0),
                    ),
                  ],
                  color: Colors.grey.shade300,
                  // border: Border.all(
                  //   color: Colors.grey.shade400,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Gurbax - Boom Shankar",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //song 2
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            height: 75,
            margin: EdgeInsets.all(10),
            decoration: new BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.filmcompanion.in/wp-content/uploads/2020/07/Film_Companion-dil-bechara-lead-image-4.jpg"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    offset: new Offset(20.0, 10.0),
                  ),
                ],
                color: Colors.grey.shade300,
                // border: Border.all(
                //   color: Colors.grey.shade400,
                //   width: 2,
                // ),
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              "AR Rahman - Dil Bechara",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //online music
          Container(
            width: double.maxFinite,
            decoration: new BoxDecoration(color: Colors.grey.shade900),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(top: 25, bottom: 12),
            child: Text(
              "Play Online Music",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),

          //song 3
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RemoteMusic()));
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 75,
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://media.socastsrm.com/wordpress/wp-content/blogs.dir/687/files/2018/11/MV5BNTZhNGM2ZTMtMzUzZi00ZmEzLWEzMTgtNjQyODA4ODk2ODQ0XkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_.jpg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: new Offset(20.0, 10.0),
                    ),
                  ],
                  color: Colors.grey.shade300,
                  // border: Border.all(
                  //   color: Colors.grey.shade400,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Linkin Park - Numb",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //song 4
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            height: 75,
            margin: EdgeInsets.all(10),
            decoration: new BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/88/90/c5/8890c519b16443fa63eccc4bb27581a1.jpg"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    offset: new Offset(20.0, 10.0),
                  ),
                ],
                color: Colors.grey.shade300,
                // border: Border.all(
                //   color: Colors.grey.shade400,
                //   width: 2,
                // ),
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              "Linkin Park - In The End",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      //Video TAB
      Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            decoration: new BoxDecoration(color: Colors.grey.shade900),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(bottom: 12),
            child: Text(
              "On Device Videos",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                // backgroundColor: Color.fromRGBO(176, 0, 32, 0.8),
              ),
            ),
          ),
          // vid 1
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VideoPlayerScreen2()));
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 170,
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://github.com/IshanSinghal/flutter-player/raw/master/offlinevid.jpg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: new Offset(20.0, 10.0),
                    ),
                  ],
                  color: Colors.grey.shade300,
                  // border: Border.all(
                  //   color: Colors.grey.shade400,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),

          //online vids
          Container(
            width: double.maxFinite,
            decoration: new BoxDecoration(color: Colors.grey.shade900),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(top: 20, bottom: 12),
            child: Text(
              "Play Online Videos",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          //vid 2
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VideoPlayerScreen1()));
            },
            child: Container(
              width: double.infinity,
              height: 170,
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://github.com/IshanSinghal/flutter-player/raw/master/onlinevid.jpg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: new Offset(20.0, 10.0),
                    ),
                  ],
                  color: Colors.grey.shade300,
                  // border: Border.all(
                  //   color: Colors.grey.shade400,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ],
      )
    ]);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: Colors.amber,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.queue_music)),
              Tab(icon: Icon(Icons.video_library)),
            ],
          ),
          backgroundColor: Color.fromRGBO(176, 0, 32, 0.8),
          title: Text("Ishan's Player"),
        ),
        body: mybody,
      ),
    );
  }
}

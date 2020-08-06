import 'package:flutter/material.dart';

var p2 = Column(
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
    Container(
      width: double.infinity,
      alignment: Alignment.center,
      height: 170,
      margin: EdgeInsets.all(10),
      decoration: new BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.ytimg.com/vi/aPyJQVC6R9E/maxresdefault.jpg"),
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
    Container(
      width: double.infinity,
      height: 170,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      decoration: new BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.ytimg.com/vi/-lpDRE3Fcj0/maxresdefault.jpg"),
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
  ],
);
//     Icon(Icons.video_label),
//   ],
// );

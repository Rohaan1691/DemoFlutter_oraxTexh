import 'package:flutter/material.dart';
import 'package:oraxtechtask/Utils/screen_size_helper.dart';



class PostHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context)*0.08,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white)),
      child: Container(
        margin: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage:  NetworkImage("https://q5n8c8q9.rocketcdn.me/wp-content/uploads/2018/08/The-20-Best-Royalty-Free-Music-Sites-in-2018.png"),
                        radius: displayHeight(context) * 0.025,
                      )
                    ),

                      Column(children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.fromLTRB(18.0, 20.0, 0.0, 5.0),
                          child: Text("Rohaan Mohsin ",
                            style: TextStyle(fontSize: displayWidth(context) * 0.03, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                          child: Text("20 Minutes ago ",
                            style: TextStyle(fontSize: displayWidth(context) * 0.025, fontWeight: FontWeight.normal, color: Colors.black26),
                            textAlign: TextAlign.start,

                          ),
                        ),

                      ],),
//                    )
                  ],
                ),
              ],
            ),
             Icon(
                Icons.more_horiz,
                color: Colors.black26,
                size: displayHeight(context) * 0.03,
              ),

          ],
        ),
      ),
    );
  }
}
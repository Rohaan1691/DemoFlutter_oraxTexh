import 'package:flutter/material.dart';
import 'package:oraxtechtask/Utils/screen_size_helper.dart';


class StatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: displayHeight(context) * 0.02,
      ),

      Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12),top: BorderSide(color: Colors.black12),),

        ),
        padding: EdgeInsets.fromLTRB(0.0,20.0,0.0,20.0),
        margin: EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "438",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.05, fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: displayHeight(context) * 0.01,
                ),
                Text(
                  "Posts",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.03, fontWeight: FontWeight.normal, color: Colors.black54),
                ),
              ],
            ),

            Column(
              children: [
                Text(
                  "298",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.05, fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: displayHeight(context) * 0.01,
                ),
                Text(
                  "Following",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.03, fontWeight: FontWeight.normal, color: Colors.black54),
                ),
              ],
            ),

            Column(
              children: [
                Text(
                  "321K",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.05, fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: displayHeight(context) * 0.01,
                ),
                Text(
                  "Followers",
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.03, fontWeight: FontWeight.normal, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: displayHeight(context) * 0.04,
      ),
    ],);
  }
}
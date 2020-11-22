import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oraxtechtask/Utils/screen_size_helper.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 8.0),
      height: displayHeight(context) * 0.4,
      width: displayWidth(context) * 0.2,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black26,
                  size: displayHeight(context) * 0.03,
                ),
//                    ),
                Text(
                  "222",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black26),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.red[200],
                  size: displayHeight(context) * 0.03,
                ),
//                    ),
                Text(
                  "3467",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black26),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

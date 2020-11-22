import 'package:flutter/material.dart';
import 'package:oraxtechtask/Utils/screen_size_helper.dart';


class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios),
          Text(
            "Profile",
            style: TextStyle(fontSize: displayWidth(context) * 0.05, fontWeight: FontWeight.w600),
          ),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
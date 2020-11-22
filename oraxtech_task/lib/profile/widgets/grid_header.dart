import 'package:flutter/material.dart';
import 'package:oraxtechtask/Utils/screen_size_helper.dart';



class GridHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context)*0.06,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white)),
      child: Container(
        margin: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Photos",
                    style: TextStyle(
                        fontSize: displayWidth(context) * 0.05, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.list,
                        color: Colors.black26,
                        size: displayHeight(context) * 0.03,
                      ),
                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.grid_on,
                        color: Colors.black26,
                        size: displayHeight(context) * 0.03,
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
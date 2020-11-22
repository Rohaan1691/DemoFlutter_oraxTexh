import 'package:flutter/material.dart';
import 'package:oraxtechtask/Explore/explore_screen.dart';
import 'package:oraxtechtask/Utils/screen_size_helper.dart';


class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
      child: Column(children:  <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ExploreScreen()));

              },
              child: Container(
                width: displayWidth(context)* 0.42,
                height: displayHeight(context) * 0.055,
                decoration: BoxDecoration(
                  color:  Colors.blue,
                  border: Border.all(color: Colors.blue),
                  borderRadius:BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    "Follow",
                    style: TextStyle(
                        fontSize: displayWidth(context) * 0.04, fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ExploreScreen()));
              },
              child: Container(
                width: displayWidth(context)* 0.42,
                height: displayHeight(context) * 0.055,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    "Message",
                    style: TextStyle(
                        fontSize: displayWidth(context) * 0.04, fontWeight: FontWeight.normal, color: Colors.black54),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: displayHeight(context) * 0.04,
        )
      ]),
    );
  }
}
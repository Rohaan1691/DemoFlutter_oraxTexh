import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:oraxtechtask/Utils/screen_size_helper.dart';
import 'package:oraxtechtask/profile/profile_model.dart';
import 'package:oraxtechtask/service/network_service.dart';


class IntroWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    circularProgress() {
      return Container(
        height: displayHeight(context)* 0.3,
        child: Center(
          child: const CircularProgressIndicator(),
        ),
      );
    }

    return  FutureBuilder<ProfileModel>(
      future: Services.getProfileData(),
      builder: (BuildContext  context, AsyncSnapshot<ProfileModel> snapshot) {
        if (snapshot.hasError) {
          return  Column(children: <Widget>[

            SizedBox(
              height: displayHeight(context) * 0.03,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: FadeInImage(
                    image: NetworkImage("https://st3.depositphotos.com/13159112/17145/v/1600/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg"),
                    placeholder: AssetImage('assets/placeholder.png'),
                  ),

                ),
              ],
            ),

            SizedBox(
              height: displayHeight(context) * 0.05,
            ),

            Text("-------------- ",
              style: TextStyle(fontSize: displayWidth(context) * 0.05, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: displayHeight(context) * 0.02,
            ),

            Container(
              margin: EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing industry. Lorem Ipsum has been the industry's ",
                style: TextStyle(fontSize: displayWidth(context) * 0.035,fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(
              height: displayHeight(context) * 0.02,
            ),

          ],);
        }
        if (snapshot.hasData) {

          return  Column(children: <Widget>[

            SizedBox(
              height: displayHeight(context) * 0.03,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child:
                  FadeInImage(
                    image: NetworkImage(snapshot.data.data.avatar),
                    placeholder: AssetImage('assets/placeholder.png'),
                    height: displayHeight(context) * 0.1,
                  ),

                ),
              ],
            ),

            SizedBox(
              height: displayHeight(context) * 0.05,
            ),

            Text(snapshot.data.data.firstName + " "+ snapshot.data.data.lastName  ,
              style: TextStyle(fontSize: displayWidth(context) * 0.05, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: displayHeight(context) * 0.02,
            ),

            Container(
              margin: EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing industry. Lorem Ipsum has been the industry's ",
                style: TextStyle(fontSize: displayWidth(context) * 0.035,fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(
              height: displayHeight(context) * 0.02,
            ),

          ],);
        }

        return circularProgress();
      },
    );


  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oraxtechtask/profile/widgets/appbar.dart';
import 'package:oraxtechtask/profile/widgets/button_section.dart';
import 'package:oraxtechtask/profile/widgets/grid_header.dart';
import 'package:oraxtechtask/profile/widgets/intro_section.dart';
import 'package:oraxtechtask/profile/widgets/stats_section.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import '../Utils/images.dart';
import 'widgets/image_cell.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  var gridView = GridView.builder(
      itemCount: Images.imageThumbUrls.length,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 12.0, mainAxisSpacing: 12.0),
      itemBuilder: (BuildContext context, int index) {
        return ImageCell(index);
      });

  circularProgress() {
    return Center(
      child: const CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.black)),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                AppBarWidget(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        IntroWidget(),
                        StatsWidget(),
                        ButtonWidget(),
                        StickyHeader(
//                          controller: controller, // Optional
                          header: GridHeader(),
                          content: Container(
                              margin: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
                              child: gridView
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )

        ),
      ),
    );
  }
}

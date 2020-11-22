import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oraxtechtask/service/network_service.dart';

import 'Widgets/explore_appbar.dart';
import 'Widgets/post_body.dart';
import 'explore_model.dart';


class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  listview(AsyncSnapshot<List<ExploreModel>> snapshot) {
    return  ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        itemCount: snapshot.data.length,
        itemBuilder: (context, index) {
          return PostBody(snapshot.data[index].title);
        },
      );

  }

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
                ExploreAppBarWidget(),

                Flexible(
                  child: FutureBuilder<List<ExploreModel>>(
                    future: Services.getExploreData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text('Error ${snapshot.error}');
                      }

                      if (snapshot.hasData) {

                        return listview(snapshot);
                      }

                      return circularProgress();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

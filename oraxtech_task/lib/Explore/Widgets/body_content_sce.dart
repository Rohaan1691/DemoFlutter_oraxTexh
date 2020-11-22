import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oraxtechtask/Utils/screen_size_helper.dart';

class ContentSection extends StatelessWidget {

  final String title;
  ContentSection(this.title);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        height: displayHeight(context) * 0.4,
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          margin: EdgeInsets.fromLTRB(0.0,0.0,10.0,10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title,
                  style: TextStyle(
                    fontSize: displayWidth(context)*0.035,
                  ),
                  textAlign: TextAlign.start,maxLines: 5,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://placeimg.com/640/480/any',
                      fit: BoxFit.fill,
                      loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            backgroundColor: Colors.grey,
                          ),
                        );
                      },

                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

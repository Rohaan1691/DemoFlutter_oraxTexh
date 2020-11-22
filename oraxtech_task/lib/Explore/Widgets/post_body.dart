import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oraxtechtask/Explore/Widgets/post_header.dart';

import 'body_comment_sec.dart';
import 'body_content_sce.dart';

class PostBody extends StatelessWidget {

  final String title;


  PostBody(this.title);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            PostHeader(),
            Row(
              children: [
                CommentSection(),
                ContentSection(title)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../Utils/images.dart';


// ignore: must_be_immutable
class ImageCell extends StatelessWidget {
  var index;
   ImageCell( this.index);


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
//      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          side: BorderSide(width: 1, color: Colors.grey)
      ),
      margin: EdgeInsets.all(5),
      child: Padding(
        padding:
        EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0, top: 0.0),
        child: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child:
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),

                  child: Image.network(Images.imageThumbUrls[index], fit: BoxFit.cover, width: double.infinity, height: 200.0),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
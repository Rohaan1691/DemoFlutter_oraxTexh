
class ExploreModel {

  String title;

  ExploreModel({this.title});

  // Return object from JSON //
  factory ExploreModel.fromJson(Map<String, dynamic> json) {
    return ExploreModel(
        title: json['body'] as String,
    );
  }
}

import 'dart:convert';

//class ProfileModel {
//
//  String name;
//  String image;
//
//  ProfileModel({this.name,this.image});
//
//  // Return object from JSON //
//  factory ProfileModel.fromJson(Map<String, dynamic> json) {
//    return ProfileModel(
//      name: json['body'] as String,
//      image: json['body'] as String,
//    );
//  }
//}


class ProfileModel {
  Data data;

  ProfileModel({this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {

  String firstName;
  String lastName;
  String avatar;

  Data({this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {

    firstName = json['first_name'] as String;
    lastName = json['last_name'] as String;
    avatar = json['avatar'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    return data;
  }
}
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:oraxtechtask/Explore/explore_model.dart';
import 'package:oraxtechtask/profile/profile_model.dart';

class Services {
  static Future<List<ExploreModel>> getExploreData() async {
    try {
      final response =
      await http.get("https://jsonplaceholder.typicode.com/posts");
      if (response.statusCode == 200) {
        List<ExploreModel> list = parseExplore(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {

      throw Exception(e.toString());
    }
  }

  static List<ExploreModel> parseExplore(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<ExploreModel>((json) => ExploreModel.fromJson(json)).toList();
  }




  static Future<ProfileModel> getProfileData() async {
    try {
      final response =
      await http.get("https://reqres.in/api/users/2");
      if (response.statusCode == 200) {
        ProfileModel list = parseProfile(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {

      debugPrint("error :" + e.toString());
      throw Exception(e.toString());
    }
  }

  static ProfileModel parseProfile(String responseBody) {
    final Map parsed = json.decode(responseBody);
    return ProfileModel.fromJson(parsed);
  }




}
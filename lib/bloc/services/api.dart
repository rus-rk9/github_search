import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:github_search/models/repo.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  Future<List<Repo>> getRepoList({
    @required String searchValue,
    @required String currentLocale,
  }) async {
    try {
      if (currentLocale != "") {
        final response = await http.get(
          'https://api.github.com/search/repositories?q=$searchValue&sort=stars&order=desc&per_page=38',
        );

        if (response.statusCode == 200) {
          final List<dynamic> userJson = (json.decode(response.body))['items'];
          return userJson
              .map((json) => Repo.fromJSON(json, currentLocale))
              .toList();
        } else {
          print("error: fetching from github ..., ${response.statusCode}");
        }
      } else {
        print("error: locale have not got yet");
      }
    } catch (e) {
      print("error: getRepoList ..., ${e.toString()}");
    }
    return null;
  }
}

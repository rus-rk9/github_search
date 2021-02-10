import 'dart:convert';

import 'package:github_search/models/repo.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  Future<List<Repo>> getRepoList() async {
    final response = await http.get(
      'https://api.github.com/search/repositories?q=github_search&sort=stars&order=desc&per_page=8',
    );

    if (response.statusCode == 200) {
      final List<dynamic> userJson = (json.decode(response.body))['items'];
      // print(userJson);
      return userJson.map((json) => Repo.fromJSON(json)).toList();
    } else {
      print("error: ${response.statusCode}");
      throw Exception('Error fetching from github ...');
    }
  }
}

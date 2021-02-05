import 'dart:convert';

import 'package:github_search/models/repo.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  Future<List<Repo>> getRepos() async {
    final response =
        await http.get('http://jsonplaceholder.typicode.com/users');

    if (response.statusCode == 200) {
      final List<dynamic> userJson = json.decode(response.body);
      return userJson.map((json) => Repo.fromJSON(json)).toList();
    } else {
      throw Exception('Error fetching users');
    }
  }
}

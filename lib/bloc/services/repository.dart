// import 'api.dart';
import 'package:flutter/material.dart';
import 'package:github_search/bloc/services/api.dart';
import 'package:github_search/models/repo.dart';

class AppRepository {
  ApiProvider api = ApiProvider();

  Future<List<Repo>> getRepos({
    @required String searchValue,
    @required String currentLocale,
  }) =>
      api.getRepoList(
        searchValue: searchValue,
        currentLocale: currentLocale,
      );
}

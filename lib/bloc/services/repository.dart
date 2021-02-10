// import 'api.dart';
import 'package:github_search/bloc/services/api.dart';
import 'package:github_search/models/repo.dart';

class AppRepository {
  ApiProvider _api = ApiProvider();

  Future<List<Repo>> getRepos() => _api.getRepoList();
}

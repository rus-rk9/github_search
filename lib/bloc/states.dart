import 'package:flutter/foundation.dart';
import 'package:github_search/models/repo.dart';

abstract class AppStates {}

class RepoErrorState extends AppStates {}

class RepoEmptyState extends AppStates {}

class RepoLoadingState extends AppStates {}

class RepoLoadedState extends AppStates {
  List<Repo> repos;

  RepoLoadedState({
    @required this.repos,
  }) : assert(repos != null);
}

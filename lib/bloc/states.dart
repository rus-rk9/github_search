import 'package:flutter/foundation.dart';

abstract class AppStates {}

class RepoEmptyState extends AppStates {}

class RepoLoadingState extends AppStates {}

class RepoLoadedState extends AppStates {
  List<dynamic> repos;

  RepoLoadedState({
    @required this.repos,
  }) : assert(repos != null);
}

class RepoErrorState extends AppStates {}

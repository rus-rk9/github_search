import 'package:github_search/models/repo.dart';
import 'events.dart';
import 'states.dart';
import 'package:github_search/bloc/services/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class AppBloc extends Bloc<AppEvents, AppStates> {
  final GlobalKey<NavigatorState> navigatorKey;
  final AppRepository appRepo;
  AppBloc({
    this.appRepo,
    this.navigatorKey,
  })  : assert(appRepo != null),
        super(null);

  @override
  Stream<AppStates> mapEventToState(AppEvents event) async* {
    if (event is RepoSearchEvent) {
      yield RepoLoadingState();
      try {
        final List<Repo> _loadedData = await appRepo.getRepos();
        print("data loaded");
        navigatorKey.currentState.pushNamed('/results');
        yield RepoLoadedState(repos: _loadedData);
      } catch (_) {
        print("error: ${_.toString()}");
        yield RepoErrorState();
      }
    }
  }
}

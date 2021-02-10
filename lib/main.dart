import 'package:flutter/material.dart';
import 'package:github_search/screens/results.dart';
import 'screens/search.dart';
import 'package:github_search/bloc/services/repository.dart';
import 'package:github_search/screens/results.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/bloc/logic.dart';
// import 'screens/results.dart';

void main() {
  runApp(SearchApp());
}

class SearchApp extends StatelessWidget {
  final AppRepository rep = AppRepository();
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (context) => AppBloc(
        appRepo: rep,
        navigatorKey: _navigatorKey,
      ),
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        initialRoute: '/',
        routes: {
          '/': (context) => Search(),
          '/results': (context) => Results(),
        },
      ),
    );
  }
}

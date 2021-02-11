import 'package:flutter/material.dart';
import 'package:github_search/screens/results.dart';
import 'screens/search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/bloc/logic.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  runApp(SearchApp());
}

class SearchApp extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    return BlocProvider<AppBloc>(
      create: (context) => AppBloc(
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

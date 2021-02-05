import 'package:flutter/material.dart';
// import 'screens/search.dart';
import 'screens/results.dart';

void main() {
  runApp(SearchApp());
}

class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Results(),
    );
  }
}

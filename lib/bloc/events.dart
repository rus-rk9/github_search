import 'package:flutter/material.dart';

abstract class AppEvents {}

class RepoSearchEvent extends AppEvents {
  final String searchValue;

  RepoSearchEvent({
    @required this.searchValue,
  });
}

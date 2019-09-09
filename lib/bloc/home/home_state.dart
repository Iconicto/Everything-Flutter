import 'package:everything_flutter/model/news.dart';

class HomeState {}

class InitialisedHomeState extends HomeState {}

class DataFetchedHomeState extends HomeState {
  final List<News> data;

  DataFetchedHomeState({this.data});

  bool get hasData => data.length > 0;
}

class ErrorHomeState extends HomeState {}

class BusyHomeState extends HomeState {}

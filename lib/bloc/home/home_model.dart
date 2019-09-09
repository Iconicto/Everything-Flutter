import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:everything_flutter/bloc/home/home_event.dart';
import 'package:everything_flutter/bloc/home/home_state.dart';
import 'package:everything_flutter/model/news.dart';

class HomeModel {
  // Controller for the stream
  final StreamController<HomeState> _stateController =
      StreamController<HomeState>();

  Stream<HomeState> get homeState => _stateController.stream;
  List<News> newsList;

  final String _endpoint = "https://everythingflutter.iconicto.com/api/news/";
  final Dio _dio = Dio();

  void dispose(HomeEvent event) {
    if (event is FetchNewsData) {
      _getLatestNews();
    }
  }

  Future _getLatestNews() async {
    _stateController.add(BusyHomeState());
    try {
      Response response = await _dio.get(_endpoint);
      newsList = NewsList.fromMap(response.data).data;
      _stateController.add(DataFetchedHomeState(data: newsList));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return _stateController.addError(error);
    }
  }
}

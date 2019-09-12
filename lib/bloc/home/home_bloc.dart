import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:everything_flutter/model/news.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState => InitialHomeState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is FetchNewsData) {
      yield* _mapFetchNewsDataToState();
    }
  }

  Stream<HomeState> _mapFetchNewsDataToState() async* {
    yield NetworkBusyHomeState();
    try {
      // network call
      final String _endpoint =
          "https://everythingflutter.iconicto.com/api/widgets/";
      final Dio _dio = Dio();

      Response response = await _dio.get(_endpoint);

      yield NewsFetchedHomeState(
          newsList: NewsList.fromMap(response.data).data);
    } catch (error, stacktrace) {
      // handle network call error
      yield NetworkErrorHomeState(error: error.toString());
    }
  }
}

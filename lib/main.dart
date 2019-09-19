import 'package:everything_flutter/constants/route_paths.dart' as routes;
import 'package:everything_flutter/locator.dart';
import 'package:everything_flutter/router.dart' as router;
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static BuildContext context;

  final ThemeData _themeData = ThemeData(
      fontFamily: 'CircularStd',
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      textTheme: TextTheme(
          title: TextStyle(
//        fontSize: 20,
              )));

  @override
  Widget build(BuildContext context) {
    context = context;
    return MaterialApp(
      title: 'Everything Flutter',
      theme: _themeData,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.HomePageRoute,
    );
  }
}

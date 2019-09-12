import 'package:everything_flutter/constants/route_paths.dart' as routes;
import 'package:everything_flutter/locator.dart';
import 'package:everything_flutter/router.dart' as router;
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData _themeData = ThemeData(
      fontFamily: 'CircularStd',
      primarySwatch: Colors.blue,
      brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everything Flutter',
      theme: _themeData,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.HomePageRoute,
    );
  }
}

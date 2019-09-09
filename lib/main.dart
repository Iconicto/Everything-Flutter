import 'package:everything_flutter/pages/home.dart';
import 'package:everything_flutter/pages/news.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everything Flutter',
      theme: ThemeData(
        fontFamily: 'CircularStd',
        primarySwatch: Colors.blue,
        brightness: Brightness.light
      ),
      home: HomePage(),
    );
  }
}

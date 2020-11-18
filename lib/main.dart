import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_project_1/fetchapi/buildapi/build_api.dart';

void main() => runApp(MyApp());

/*class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
}*/

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Example",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          title: Text('Posts' ),
        ),
        body: BuildApi(context),
      ),
    );
  }
}


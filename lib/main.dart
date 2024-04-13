import 'package:flutter/material.dart';
import 'package:tuto/homePage.dart';
import 'package:tuto/headerSection.dart';
import 'package:tuto/playlistSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      
    );
  }
}

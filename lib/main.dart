import 'package:flutter/material.dart';
import 'package:my_travel_app/destination_model.dart';
import 'package:my_travel_app/destination_detail.dart';
import 'package:my_travel_app/home_page.dart';
import 'package:my_travel_app/splash_screen.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Travel App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

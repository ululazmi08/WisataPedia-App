import 'package:flutter/material.dart';
import 'package:jagocoding_wisatapedia/nav_bottom_bar.dart';
import 'package:jagocoding_wisatapedia/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageSplashScreen(),
    );
  }
}

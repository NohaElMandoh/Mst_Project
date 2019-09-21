import 'package:flutter/material.dart';
import 'package:mst_project/screens/login.dart';
import 'package:mst_project/screens/signup.dart';
import 'package:mst_project/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => Splash(),
         '/login': (BuildContext context) => login(),
          '/signup': (BuildContext context) => signup(),
        
        
      },

     
    );
  }
}



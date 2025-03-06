import 'package:flutter/material.dart';
import 'package:graduationproject/ui/Home/homeScreen.dart';
import 'package:graduationproject/ui/Home/tabs/newsScreen.dart';
import 'package:graduationproject/ui/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: splashScreen.routeName, routes: {
      splashScreen.routeName: (context) => splashScreen(),
      homeScreen.routeName: (context) => homeScreen(),
      newsScreen.routeName: (context) => newsScreen()
    });
  }
}

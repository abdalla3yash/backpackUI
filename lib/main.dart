import 'package:backpack/screens/splash/splash1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Backpack',
      theme: ThemeData(
        fontFamily: "Poppins",
        accentColor: Colors.amber,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      home: Splash1Screen(),
    );
  }
}

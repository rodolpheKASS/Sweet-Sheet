import 'package:flutter/material.dart';
import 'package:sweet_sheet/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'circular',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Sweet Sheet'),
    );
  }
}

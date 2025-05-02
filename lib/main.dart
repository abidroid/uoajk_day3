import 'package:flutter/material.dart';
import 'package:uoajk_day3/screens/dynamic_listview_screen.dart';
import 'package:uoajk_day3/screens/gridview_demo_screen.dart';
import 'package:uoajk_day3/screens/listview_demo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const GridviewDemoScreen(),
    );
  }
}


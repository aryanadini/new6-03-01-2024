import 'package:flutter/material.dart';

import 'My  CustomScrollView.dart';
import 'My progressdialogue.dart';
import 'Mysliver.dart';

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
      home:Myscroll(),
    );

  }
}

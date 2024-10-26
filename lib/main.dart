import 'package:flutter/material.dart';
import 'package:wisatacandi_astri/screens/detail_screen.dart';
import 'package:wisatacandi_astri/data/candi_data.dart';

import 'data/candi_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(),
      // home: DetailScreen(candi: candiList[0]),
    );
  }
}
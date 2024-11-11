import 'package:flutter/material.dart';
import 'package:wisatacandi/screens/home_screen.dart';
// import 'package:wisatacandi_astri/screens/detail_screen.dart';
// import 'package:wisatacandi_astri/data/candi_data.dart';
// import 'package:wisatacandi/screens/profile_screen.dart';
import 'package:wisatacandi_astri/screens/home_screen.dart';
import 'package:wisatacandi/screens/Search_Screen.dart';
import 'package:wisatacandi/screens/SignInScreen.dart';
import 'package:wisatacandi/screens/SingUpScreen.dart';


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
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme:
        ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
         primary: Colors.deepPurple,
         surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      // home: const ProfileScreen
      // home: DetailScreen(candi: candiList[0]),
      // home: SignInScreen(),
      // home: SignUpScreen(),
      // home: SearchScreen(),
      home: HomeScreen(),
    );
  }
}
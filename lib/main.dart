import 'package:flutter/material.dart';
import 'package:wisatacandipuspita/data/candi_data.dart';
import 'package:wisatacandipuspita/models/candi.dart';
import 'package:wisatacandipuspita/screens/detail_screen.dart';
import 'package:wisatacandipuspita/screens/signin_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wisata candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor:  Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true
      ),
      home: DetailScreen(candi: candiList[0],),
      // home: ProfileScreen(),
      // home: SignInScreen(),
    );
  }
}


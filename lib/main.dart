import 'package:flutter/material.dart';
import 'package:learning_app/presentation/community_page.dart';
import 'package:learning_app/presentation/home_screen.dart';
import 'package:learning_app/presentation/learn_page.dart';
import 'package:learning_app/presentation/login_screen.dart';
import 'package:learning_app/presentation/profile_page.dart';
import 'package:learning_app/presentation/question_page.dart';
import 'package:learning_app/presentation/search_page.dart';
import 'package:learning_app/presentation/side-screens/chat_screen.dart';
import 'package:learning_app/presentation/side-screens/trailer_screen.dart';
import 'package:learning_app/presentation/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: LoginScreen(),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/presentation/community/community.dart';
import 'package:learning_app/presentation/homescreen/home.dart';
import 'package:learning_app/presentation/learn/learn.dart';
import 'package:learning_app/presentation/messager/messager.dart';
import 'package:learning_app/presentation/profile/profile.dart';
import 'package:learning_app/presentation/search/search.dart';

class AppRoutes {
  static const home = '/';
  static const category = '/category';
  static const community = '/community';
  static const search = '/search';
  static const chat = '/chat';
  static const course = '/course';
  static const menu = '/menu';

  static final routes = [
    GetPage(name: home, page: () => HomeScreen()),
    GetPage(name: community, page: () => QuestionsPage()),
    GetPage(name: search, page: () => SearchPage()),
    GetPage(name: chat, page: () => CommunityPage()),
    GetPage(name: course, page: () => LearnPage()),
    GetPage(name: menu, page: () => ProfilePage()),
  ];
}

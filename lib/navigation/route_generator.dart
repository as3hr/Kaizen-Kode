// ignore_for_file: unused_local_variable

import 'package:kaizen_code/features/bottom_bar/bottom_bar.dart';
import 'package:kaizen_code/features/chat/chat_screen.dart';
import 'package:kaizen_code/features/chat/components/chat_room/chat_room.dart';
import 'package:kaizen_code/features/create/create_screen.dart';
import 'package:kaizen_code/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:kaizen_code/main.dart';
import 'package:kaizen_code/navigation/route_name.dart';

import '../features/home/home_screen.dart';
import '../features/search/search_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final args =
      (settings.arguments ?? <String, dynamic>{}) as Map<String, dynamic>;
  switch (settings.name) {
    case RouteName.bottomBar:
      return MaterialPageRoute(
          builder: (context) => BottomBar(
                cubit: getIt(),
              ));
    case RouteName.profile:
      return MaterialPageRoute(builder: (context) => const ProfileScreen());

    case RouteName.home:
      return MaterialPageRoute(
          builder: (context) => HomeScreen(cubit: getIt()));

    case RouteName.chat:
      return MaterialPageRoute(
          builder: (context) => ChatScreen(cubit: getIt()));

    case RouteName.chatRoom:
      return MaterialPageRoute(builder: (context) => ChatRoom(cubit: getIt()));

    case RouteName.search:
      return MaterialPageRoute(builder: (context) => const SearchPage());

    case RouteName.create:
      return MaterialPageRoute(
          builder: (context) => CreateScreen(cubit: getIt()));

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(
                  child: Text('PAGE NOT FOUND!!'),
                ),
              ));
  }
}

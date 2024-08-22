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
      return getRoute(BottomBar(cubit: getIt()));

    case RouteName.profile:
      return getRoute(const ProfileScreen());

    case RouteName.home:
      return getRoute(HomeScreen(cubit: getIt()));

    case RouteName.chat:
      return getRoute(ChatScreen(cubit: getIt()));

    case RouteName.chatRoom:
      return getRoute(ChatRoom(cubit: getIt()));

    case RouteName.search:
      return getRoute(const SearchPage());

    case RouteName.create:
      return getRoute(CreateScreen(cubit: getIt()));

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(
                  child: Text('PAGE NOT FOUND!!'),
                ),
              ));
  }
}

PageRouteBuilder getRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => page,
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
  );
}

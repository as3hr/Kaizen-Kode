import 'package:kaizen_code/features/chat/chat_screen.dart';
import 'package:kaizen_code/features/create/create_screen.dart';
import 'package:kaizen_code/features/home/home_screen.dart';
import 'package:kaizen_code/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:kaizen_code/helpers/styles/app_images.dart';

import '../../../main.dart';
import '../../search/search_page.dart';

class BottomBarItem {
  Widget page;
  String title;
  String image;

  BottomBarItem({
    required this.image,
    required this.page,
    required this.title,
  });
  static final items = [
    BottomBarItem(
      image: AppImages.home,
      page: HomeScreen(cubit: getIt()),
      title: 'Home',
    ),
    BottomBarItem(
      image: AppImages.search,
      page: const SearchPage(),
      title: 'Search',
    ),
    BottomBarItem(
      image: AppImages.create,
      page: CreateScreen(cubit: getIt()),
      title: 'Create',
    ),
    BottomBarItem(
      image: AppImages.chat,
      page: ChatScreen(cubit: getIt()),
      title: 'Chat',
    ),
    BottomBarItem(
      image: AppImages.profile,
      page: const ProfileScreen(),
      title: 'Profile',
    ),
  ];
}

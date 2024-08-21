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
  String? selectedImage;
  String unSelectedImage;

  BottomBarItem({
    required this.unSelectedImage,
    this.selectedImage,
    required this.page,
    required this.title,
  });
  static final items = [
    BottomBarItem(
      unSelectedImage: AppImages.home,
      selectedImage: AppImages.greenHome,
      page: HomeScreen(cubit: getIt()),
      title: 'Home',
    ),
    BottomBarItem(
      unSelectedImage: AppImages.search,
      page: const SearchPage(),
      title: 'Search',
    ),
    BottomBarItem(
      unSelectedImage: AppImages.create,
      page: CreateScreen(cubit: getIt()),
      title: 'Create',
    ),
    BottomBarItem(
      unSelectedImage: AppImages.chat,
      selectedImage: AppImages.greenChat,
      page: ChatScreen(cubit: getIt()),
      title: 'Chat',
    ),
    BottomBarItem(
      unSelectedImage: AppImages.profile,
      page: const ProfileScreen(),
      title: 'Profile',
    ),
  ];
}

import 'package:flutter/material.dart';

import '../../../../navigation/app_navigation.dart';
import '../../../../navigation/route_name.dart';

class ChatRoomNavigator {
  late BuildContext context;
  final AppNavigation navigation;
  ChatRoomNavigator(this.navigation);

  pop() {
    navigation.pop(context);
  }
}

mixin ChatRoomRoute {
  void goToChatRoom() {
    navigation.push(context, RouteName.chatRoom);
  }

  AppNavigation get navigation;
  BuildContext get context;
}

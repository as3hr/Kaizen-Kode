import 'package:kaizen_code/navigation/app_navigation.dart';
import 'package:kaizen_code/navigation/route_name.dart';
import 'package:flutter/widgets.dart';

import 'components/chat_room/chat_room_navigator.dart';

class ChatNavigator with ChatRoomRoute {
  @override
  late BuildContext context;
  @override
  final AppNavigation navigation;
  ChatNavigator(this.navigation);
}

mixin ChatRoute {
  void goToChat() {
    navigation.push(context, RouteName.chat);
  }

  AppNavigation get navigation;
  BuildContext get context;
}

import 'package:kaizen_code/navigation/app_navigation.dart';
import 'package:kaizen_code/navigation/route_name.dart';
import 'package:flutter/material.dart';

import '../create/create_navigator.dart';

class BottomBarNavigator with CreateRoute {
  @override
  final AppNavigation navigation;
  @override
  late BuildContext context;
  BottomBarNavigator(this.navigation);

  void pop() {
    navigation.pop(context);
  }
}

mixin BottomBarRoute {
  void goToBottomBar() {
    navigation.push(context, RouteName.bottomBar);
  }

  AppNavigation get navigation;
  BuildContext get context;
}

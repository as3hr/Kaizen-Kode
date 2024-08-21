import 'package:kaizen_code/navigation/app_navigation.dart';
import 'package:kaizen_code/navigation/route_name.dart';
import 'package:flutter/widgets.dart';

class HomeNavigator {}

mixin HomeRoute {
  void goToHome() {
    navigation.push(context, RouteName.home);
  }

  AppNavigation get navigation;
  BuildContext get context;
}

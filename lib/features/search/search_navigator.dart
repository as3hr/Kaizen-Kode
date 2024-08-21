import 'package:kaizen_code/navigation/app_navigation.dart';
import 'package:kaizen_code/navigation/route_name.dart';
import 'package:flutter/material.dart';

class NotificationNavigator {}

mixin NotificationRoute {
  void goToNotification() => navigation.push(context, RouteName.search);
  AppNavigation get navigation;
  BuildContext get context;
}

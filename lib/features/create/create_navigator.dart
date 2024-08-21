import 'package:kaizen_code/navigation/app_navigation.dart';
import 'package:kaizen_code/navigation/route_name.dart';
import 'package:flutter/widgets.dart';

class CreateNavigator {
  late BuildContext context;
  final AppNavigation navigation;
  CreateNavigator(this.navigation);

  pop() {
    navigation.pop(context);
  }
}

mixin CreateRoute {
  void goToCreate() {
    navigation.push(context, RouteName.create);
  }

  AppNavigation get navigation;
  BuildContext get context;
}

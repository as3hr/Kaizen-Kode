import 'package:kaizen_code/features/bottom_bar/bottom_bar_cubit.dart';
import 'package:kaizen_code/main.dart';
import 'package:nested/nested.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppProvider {
  static List<SingleChildWidget> providers = [
    BlocProvider(create: (context) => BottomBarCubit(getIt())),
  ];
}

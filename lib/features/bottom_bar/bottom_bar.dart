import 'package:kaizen_code/features/bottom_bar/bottom_bar_container.dart';
import 'package:kaizen_code/features/bottom_bar/bottom_bar_cubit.dart';
import 'package:kaizen_code/features/bottom_bar/bottom_bar_state.dart';
import 'package:kaizen_code/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.cubit});
  final BottomBarCubit cubit;

  @override
  Widget build(BuildContext context) {
    cubit.navigation.context = context;
    return BlocBuilder<BottomBarCubit, BottomBarState>(
        bloc: cubit,
        builder: (context, state) {
          return PopScope(
            canPop: false,
            // onPopInvoked: (didPop) async {
            // await cubit.onPopInvoked(didPop, context);
            // },
            child: Scaffold(
              body: state.page,
              bottomNavigationBar: BottomBarContainer(cubit: getIt()),
            ),
          );
        });
  }
}

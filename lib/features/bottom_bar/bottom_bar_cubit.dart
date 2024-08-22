import 'package:flutter/material.dart';
import 'package:kaizen_code/features/bottom_bar/bottom_bar_navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helpers/helpers.dart';
import 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  final BottomBarNavigator navigation;
  BottomBarCubit(this.navigation) : super(BottomBarState.empty());

  void updateIndex(int index) {
    if (index == 2) {
      navigation.goToCreate();
    } else {
      emit(state.copyWith(currentIndex: index, page: state.items[index].page));
    }
  }

  Future<void> onPopInvoked(bool didPop, BuildContext context) async {
    if (didPop) return;
    if (await showConfirmationDialog('Do you want to exit the app?', context) &&
        context.mounted) {
      // navigation.pop();
    }
  }
}

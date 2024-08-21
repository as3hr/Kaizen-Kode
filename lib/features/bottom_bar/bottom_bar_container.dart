import 'package:collection/collection.dart';
import 'package:kaizen_code/features/bottom_bar/bottom_bar_cubit.dart';
import 'package:kaizen_code/features/bottom_bar/bottom_bar_state.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/bottom_bar_icon.dart';

class BottomBarContainer extends StatelessWidget {
  const BottomBarContainer({super.key, required this.cubit});
  final BottomBarCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 0.07.sh,
      constraints: BoxConstraints(maxHeight: 0.1.sh),
      decoration: const BoxDecoration(
        color: AppColor.white,
      ),
      child: BlocBuilder<BottomBarCubit, BottomBarState>(
          bloc: cubit,
          builder: (context, bottomBarState) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: bottomBarState.items.mapIndexed((index, item) {
                return BottomBarIcon(
                  item: item,
                  bottomBarCubit: getIt(),
                  index: index,
                );
              }).toList(),
            );
          }),
    );
  }
}

import 'package:kaizen_code/features/bottom_bar/components/bottom_bar_item.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import '../bottom_bar_cubit.dart';
import '../bottom_bar_state.dart';

class BottomBarIcon extends StatefulWidget {
  const BottomBarIcon({
    super.key,
    required this.item,
    required this.index,
    required this.bottomBarCubit,
  });
  final BottomBarItem item;
  final int index;
  final BottomBarCubit bottomBarCubit;

  @override
  State<BottomBarIcon> createState() => _BottomBarIconState();
}

class _BottomBarIconState extends State<BottomBarIcon> {
  late BottomBarCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = widget.bottomBarCubit;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
        bloc: cubit,
        builder: (context, state) {
          bool isSelected = state.currentIndex == widget.index;
          final color = isSelected ? AppColor.green : AppColor.lightBlack;
          return GestureDetector(
            onTap: () => cubit.updateIndex(widget.index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  widget.item.image,
                  color: color,
                ),
                Text(widget.item.title,
                    style: Styles.mediumStyle(
                      fontSize: 12,
                      color: color,
                    )),
              ],
            ),
          );
        });
  }
}

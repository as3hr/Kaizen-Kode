import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaizen_code/features/home/home_cubit.dart';
import 'package:kaizen_code/features/home/home_state.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import '../../../helpers/styles/app_images.dart';

class TopicBottomSheet extends StatefulWidget {
  const TopicBottomSheet({super.key, required this.cubit});
  final HomeCubit cubit;
  @override
  State<TopicBottomSheet> createState() => _TopicBottomSheetState();
}

class _TopicBottomSheetState extends State<TopicBottomSheet> {
  final topics = [
    'Home',
    'Search',
    'Settings',
    'About',
  ];
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.3,
      maxChildSize: 1.0,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<HomeCubit, HomeState>(
                  bloc: widget.cubit,
                  builder: (context, state) {
                    return Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: topics.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              widget.cubit.updateIndex(index);
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: state.bottomSheetIndex == index
                                      ? AppColor.green
                                      : AppColor.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  leading: Image.asset(AppImages.bottomBarTopic,
                                      color: state.bottomSheetIndex == index
                                          ? AppColor.white
                                          : AppColor.lightBlack),
                                  title: Text(
                                    topics[index],
                                    style: Styles.mediumStyle(
                                      fontSize: 16,
                                      color: state.bottomSheetIndex == index
                                          ? AppColor.white
                                          : AppColor.black1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }),
            ],
          ),
        );
      },
    );
  }
}

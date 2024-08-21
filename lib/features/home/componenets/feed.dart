import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/features/home/home_cubit.dart';
import 'package:kaizen_code/features/home/home_state.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import '../../../helpers/styles/app_colors.dart';
import '../../../helpers/styles/app_images.dart';
import 'topic_bottom_sheet.dart';
import 'post_container.dart';

class Feed extends StatelessWidget {
  const Feed({super.key, required this.cubit});
  final HomeCubit cubit;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        bloc: cubit,
        builder: (context, state) {
          return SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              20.verticalSpace,
              Row(children: [
                10.horizontalSpace,
                Text(
                  'Feeds',
                  style: Styles.boldStyle(fontSize: 20, color: AppColor.black1),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => const TopicBottomSheet());
                  },
                  child: Image.asset(
                    AppImages.filter,
                  ),
                ),
                15.horizontalSpace,
              ]),
              10.verticalSpace,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.postList.length,
                itemBuilder: (context, index) {
                  final post = state.postList[index];
                  return PostContainer(
                    post: post,
                    showBookmark: index.isOdd ? true : false,
                  );
                },
              )
            ]),
          );
        });
  }
}

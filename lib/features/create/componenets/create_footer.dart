import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/features/create/componenets/topic_chips.dart';
import 'package:kaizen_code/features/create/create_state.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import '../../../helpers/styles/app_images.dart';
import '../create_cubit.dart';

class CreateFooter extends StatelessWidget {
  const CreateFooter({super.key, required this.cubit});
  final CreateCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateCubit, CreateState>(
        bloc: cubit,
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Topic',
                    style: Styles.semiMediumStyle(
                        fontSize: 14, color: AppColor.black1),
                  ),
                ),
                TopicChips(
                  cubit: cubit,
                  topics: (topics) {
                    state.post.topics = topics;
                  },
                ),
                (state.post.content.image?.path.isEmpty ?? true)
                    ? Row(
                        children: [
                          10.horizontalSpace,
                          GestureDetector(
                            onTap: () async {
                              await cubit.getImageFromCamera();
                            },
                            child: Image.asset(AppImages.postCamera),
                          ),
                          10.horizontalSpace,
                          GestureDetector(
                            onTap: () async {
                              await cubit.getImageFromGallery();
                            },
                            child: Image.asset(AppImages.postGallery),
                          ),
                        ],
                      )
                    : Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(state.post.content.image!.path),
                                height: 120,
                              ),
                            ),
                          ),
                          Positioned(
                            top: -5,
                            right: -5,
                            child: GestureDetector(
                              onTap: () {
                                cubit.removeImage();
                              },
                              child: const Icon(
                                Icons.cancel,
                                color: AppColor.lightGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          );
        });
  }
}

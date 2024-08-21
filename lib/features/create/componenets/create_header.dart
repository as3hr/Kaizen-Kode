import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/features/create/create_cubit.dart';
import 'package:kaizen_code/features/create/create_state.dart';
import 'package:kaizen_code/helpers/styles/app_images.dart';
import 'package:kaizen_code/domain/entities/post.dart';

import '../../../helpers/styles/app_colors.dart';
import '../../../helpers/styles/styles.dart';
import '../../../helpers/widgets/cylindrical_container.dart';

class CreateHeader extends StatelessWidget {
  const CreateHeader({super.key, required this.cubit, required this.onChanged});
  final CreateCubit cubit;
  final void Function(PostType) onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  cubit.navigation.pop();
                },
                child: Image.asset(AppImages.backArrow),
              ),
              Text('Create Post',
                  style: Styles.semiBoldStyle(
                      fontSize: 16, color: AppColor.black1)),
              GestureDetector(
                onTap: () {
                  cubit.createPost(context);
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  decoration: BoxDecoration(
                    color: AppColor.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: Text('Post',
                          style: Styles.semiBoldStyle(
                            fontSize: 15,
                            color: AppColor.white,
                          ))),
                ),
              ),
            ],
          ),
        ),
        10.verticalSpace,
        BlocBuilder<CreateCubit, CreateState>(
            bloc: cubit,
            builder: (context, state) {
              final postType = state.post.postType;
              final isPublic = postType == PostType.public;
              final isBusiness = postType == PostType.business;
              return Row(
                children: [
                  Expanded(
                    child: CylindricalContainer(
                      color: isPublic ? AppColor.green : AppColor.white,
                      text: 'Public',
                      onChanged: () {
                        onChanged.call(PostType.public);
                      },
                      textColor: isPublic ? AppColor.white : AppColor.blackText,
                      borderColor:
                          isPublic ? AppColor.green : AppColor.blackText,
                    ),
                  ),
                  Expanded(
                    child: CylindricalContainer(
                      color: isBusiness ? AppColor.green : AppColor.white,
                      text: 'Business',
                      onChanged: () {
                        onChanged.call(PostType.business);
                      },
                      textColor:
                          isBusiness ? AppColor.white : AppColor.blackText,
                      borderColor:
                          isBusiness ? AppColor.green : AppColor.blackText,
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }
}

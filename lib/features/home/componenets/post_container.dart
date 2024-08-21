import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/domain/entities/post.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import '../../../helpers/styles/app_images.dart';

class PostContainer extends StatelessWidget {
  const PostContainer(
      {super.key,
      required this.post,
      required this.showBookmark,
      required this.index});
  final Post post;
  final bool showBookmark;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                AppImages.james,
              )),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(post.authorName,
                      style: Styles.mediumStyle(
                          fontSize: 13, color: AppColor.black1)),
                  3.horizontalSpace,
                  Image.asset(
                    AppImages.verify,
                  ),
                  Text('  .${post.date}',
                      style: Styles.semiMediumStyle(
                          fontSize: 13, color: AppColor.black1)),
                ],
              ),
              subtitle: Text(post.topics.first,
                  style: Styles.semiMediumStyle(
                      fontSize: 13, color: AppColor.black1)),
              trailing: Image.asset(
                AppImages.threeDots,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(post.content.text,
                  style: Styles.semiMediumStyle(
                      fontSize: 13, color: AppColor.blackText)),
            ),
            10.verticalSpace,
            if (index.isOdd)
              Image.asset(
                AppImages.bigjames,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            10.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.heart,
                  ),
                  20.horizontalSpace,
                  Image.asset(
                    AppImages.message,
                  ),
                  20.horizontalSpace,
                  Image.asset(
                    AppImages.send,
                  ),
                  const Spacer(),
                  if (showBookmark) Image.asset(AppImages.bookmark),
                  10.horizontalSpace,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/domain/entities/post.dart';

import '../../../helpers/styles/app_images.dart';

class PostContainer extends StatelessWidget {
  const PostContainer(
      {super.key, required this.post, required this.showBookmark});
  final Post post;
  final bool showBookmark;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                  child: Icon(Icons.person, color: AppColor.black1)),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(post.authorName),
                  3.horizontalSpace,
                  Image.asset(
                    AppImages.verify,
                  ),
                  Text('  .${post.date}'),
                ],
              ),
              subtitle: Text(post.topics.first),
              trailing: Image.asset(
                AppImages.threeDots,
              ),
            ),
            Text(post.content.text),
            10.verticalSpace,
            Row(
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
          ],
        ),
      ),
    );
  }
}

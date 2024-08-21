import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/domain/entities/user.dart';
import 'package:kaizen_code/helpers/styles/app_images.dart';

import '../../../helpers/styles/app_colors.dart';
import '../../../helpers/styles/styles.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(user.image),
            ),
            10.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style:
                        Styles.boldStyle(fontSize: 16, color: AppColor.black1),
                  ),
                  Text(
                    user.message,
                    style: Styles.semiMediumStyle(
                        fontSize: 14, color: AppColor.blackText),
                  ),
                  10.verticalSpace,
                  Row(
                    children: [
                      Text(
                        user.time,
                        style: Styles.semiMediumStyle(
                            fontSize: 12, color: AppColor.blackText),
                      ),
                      const Spacer(),
                      Text(
                        '5',
                        style: Styles.mediumStyle(
                            fontSize: 14, color: AppColor.blackText),
                      ),
                      5.horizontalSpace,
                      Image.asset(AppImages.chatMessage),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import '../../../../../helpers/styles/app_colors.dart';
import '../../../../../helpers/styles/app_images.dart';

class OtherMessage extends StatelessWidget {
  const OtherMessage({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          5.horizontalSpace,
          const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(AppImages.user1),
          ),
          5.horizontalSpace,
          Container(
            padding: const EdgeInsets.all(8),
            constraints: BoxConstraints(
              maxWidth: 0.65.sw,
            ),
            decoration: BoxDecoration(
              color: AppColor.lightGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Sed cursus nec lectus aliquam ut diam aenean.',
                  style:
                      Styles.mediumStyle(fontSize: 16, color: AppColor.black1),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '16:04',
                    style: Styles.semiMediumStyle(
                        fontSize: 12, color: AppColor.blackText),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

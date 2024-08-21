import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/app_images.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Spacer(),
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
                  'Lorem ipsum dolor sit amet consectetur. Nisl id mattis hac quisque sed. Nec massa dui malesuada et urna. Vel ultricies ipsum nec nibh quam habitant eget massa dui. In eu ac curabitur mattis. Neque diam.',
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
          5.horizontalSpace,
          const Align(
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(AppImages.james),
            ),
          ),
          5.horizontalSpace,
        ],
      ),
    );
  }
}
